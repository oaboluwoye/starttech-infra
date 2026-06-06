#!/bin/bash
dnf update -y
dnf install -y docker amazon-cloudwatch-agent

systemctl enable docker
systemctl start docker

usermod -aG docker ec2-user

mkdir -p /opt/starttech
mkdir -p /var/log/starttech

cat <<EOF > /opt/starttech/docker-compose.yml
version: "3.8"

services:
  backend:
    image: nginx:latest
    container_name: starttech-backend
    ports:
      - "8080:80"
    restart: always
EOF

cd /opt/starttech
docker run -d --name starttech-backend -p 8080:80 nginx:latest

cat <<EOF > /opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
{
  "logs": {
    "logs_collected": {
      "files": {
        "collect_list": [
          {
            "file_path": "/var/log/cloud-init-output.log",
            "log_group_name": "/starttech/prod/backend",
            "log_stream_name": "{instance_id}/cloud-init"
          },
          {
            "file_path": "/var/log/messages",
            "log_group_name": "/starttech/prod/backend",
            "log_stream_name": "{instance_id}/system"
          }
        ]
      }
    }
  }
}
EOF

/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -a fetch-config \
  -m ec2 \
  -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json \
  -s
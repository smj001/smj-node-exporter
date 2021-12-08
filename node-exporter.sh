#!/bin/bash
export $(cat .env | xargs)
mkdir /node-exporter
cd /node-exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar -xzf node_exporter-1.3.1.linux-amd64.tar.gz


cat << EOF > /etc/systemd/system/node_exporter.service
[Unit]

Description=node_exporter
Wants=network-online.target
After=network-online.target

[Service]

User=root
Type=simple
ExecStart=/node-exporter/node_exporter-1.3.1.linux-amd64/node_exporter --web.listen-address=:"$EXPORTER_PORT"

[Install]

WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl start node_exporter
systemctl status node_exporter
systemctl enable node_exporter

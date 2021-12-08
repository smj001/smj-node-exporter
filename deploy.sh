#!/bin/bash
echo "Welcome to SMJ Node-Exporter:\n"
echo "Please Enter Your Target Node-Exporter Port:"
read NODE_EXPORTER_PORT
echo "NODE_EXPORTER_PORT=$NODE_EXPORTER_PORT" >> .env
#./node-exporter.sh

#!/bin/bash
echo "Welcome to SMJ Node-Exporter:\n"
echo "Please Enter Your Target Node-Exporter Port:"
read EXPORTER_PORT
echo "EXPORTER_PORT=$EXPORTER_PORT" >> .env
./node-exporter.sh

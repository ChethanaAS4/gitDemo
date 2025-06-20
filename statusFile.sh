#!/bin/bash

read -p "Enter the service name: " service_name

if systemctl list-units --type=service | grep -q "${service_name}"; 
then
	systemctl status "$service_name"
else
    echo "Service '$service_name' not found."
fi

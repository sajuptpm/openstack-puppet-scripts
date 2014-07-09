#!/usr/bin/env bash
##source this script and run the command like "#heat stack-list"


HEATCLIENT_DEBUG=0

#Don't use admin user and admin tenant, issue:VM will not get private IP.
OS_USERNAME=demo
OS_PASSWORD=nova
#Endpoint of keystone
OS_AUTH_URL=http://192.168.56.103:35357/v2.0
#Don't use admin tenant, issue:VM will not get private IP.
OS_TENANT_NAME=demo
#run "#keystone tenant-list" and find the IP of tenant
OS_TENANT_ID=a45e1c5b562942a5a3af8cf302ae2b47
#Endpoint of heat-api
HEAT_URL=http://127.0.0.1:8004/v1/$OS_TENANT_ID
OS_NO_CLIENT_AUTH=1

export OS_USERNAME
export OS_PASSWORD
export OS_TENANT_NAME
export OS_AUTH_URL
export HEAT_URL
export OS_NO_CLIENT_AUTH
export HEATCLIENT_DEBUG


#!/usr/bin/env bash
##source this script and run the command like "#heat stack-list"


HEATCLIENT_DEBUG=1

OS_USERNAME=admin
OS_PASSWORD=nova
OS_AUTH_URL=http://192.168.56.103:35357/v2.0
OS_TENANT_NAME=admin
OS_TENANT_ID=a5afdc307efb41b3aa4b91d407b5b39c
HEAT_URL=http://127.0.0.1:8004/v1/$OS_TENANT_ID
OS_NO_CLIENT_AUTH=1

export OS_USERNAME
export OS_PASSWORD
export OS_TENANT_NAME
export OS_AUTH_URL
export HEAT_URL
export OS_NO_CLIENT_AUTH
export HEATCLIENT_DEBUG


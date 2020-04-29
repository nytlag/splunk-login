#!/bin/bash

CONF_FILE="/opt/splunk/etc/system/local/authentication.conf"

function create_app_file ()
{
        touch /opt/splunk/etc/system/local/authentication.conf
}

echo "[splunk_auth]" >> $CONF_FILE
echo  "minPasswordLength = 5" >> $CONF_FILE

splunk restart -f

splunk edit user admin -password admin  -auth admin:admin123

splunk restart -f

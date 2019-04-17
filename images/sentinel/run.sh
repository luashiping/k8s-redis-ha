#!/bin/bash

set -eux

mkdir -p /opt/bin
cp /dig-a /dig-srv /k8s-redis-ha-sentinel /opt/bin
if [[ ! -f /opt/sentinel.template.conf ]]
then
	cp /sentinel.template.conf /opt
fi
chmod -R +x /opt/bin
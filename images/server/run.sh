#!/bin/bash

set -eux

mkdir -p /opt/bin
cp /dig-a /dig-srv /k8s-redis-ha-server /opt/bin
if [[ ! -f /opt/redis.template.conf ]]
then
	cp /redis.template.conf /opt
fi
chmod -R +x /opt/bin
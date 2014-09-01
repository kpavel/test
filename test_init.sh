#!/bin/bash

mkdir /var/log/saved1/
cp -r /root/* /var/log/saved1/

cat /var/lib/heat-cfntools/hack/userdata_static > /var/lib/heat-cfntools/hack/userdata
curl https://api.service.softlayer.com/rest/v3/SoftLayer_Resource_Metadata/UserMetadata.txt >> /var/lib/heat-cfntools/hack/userdata

rm -rf /var/lib/cloud/instances/
rm -rf /var/cache/heat-cfntools/*

cloud-init init

mkdir /var/log/saved2/
cp -r /root/* /var/log/saved2/

cloud-init modules --mode init
cloud-init modules --mode config
cloud-init modules --mode final

mkdir /var/log/saved3/
cp -r /root/* /var/log/saved3/

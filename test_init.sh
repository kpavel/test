#!/bin/bash

sudo apt-get install -y curl

curl https://api.service.softlayer.com/rest/v3/SoftLayer_Resource_Metadata/UserMetadata.txt > ~/metadata.txt

cat /var/lib/heat-cfntools/hack/userdata_static > /var/lib/heat-cfntools/hack/userdata

curl https://api.service.softlayer.com/rest/v3/SoftLayer_Resource_Metadata/UserMetadata.txt >> /var/lib/heat-cfntools/hack/userdata

rm -rf /var/lib/cloud/instances/
rm -rf /var/cache/heat-cfntools/*

cloud-init init

cloud-init modules --mode init
cloud-init modules --mode config
cloud-init modules --mode final

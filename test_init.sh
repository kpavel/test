#!/bin/bash

cat /var/lib/heat-cfntools/hack/userdata_static > /var/lib/heat-cfntools/hack/userdata
curl https://api.service.softlayer.com/rest/v3/SoftLayer_Resource_Metadata/UserMetadata.txt >> /var/lib/heat-cfntools/hack/userdata

cloud-init init
cloud-init init --mode config
cloud-init init --mode final

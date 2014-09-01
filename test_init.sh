#!/bin/bash
sudo apt-get install -y curl

curl https://api.service.softlayer.com/rest/v3/SoftLayer_Resource_Metadata/UserMetadata.txt > ~/metadata.txt


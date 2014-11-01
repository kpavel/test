#!/bin/bash

yum -y update
rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum -y install cloud-init
yum -y install perl python python-setuptools cloud-init python-pip
yum -y install gcc
yum -y install  python-devel
pip-python install argparse 'boto==2.5.2' heat-cfntools


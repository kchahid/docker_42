#!/bin/sh

cd /rosehosting/python
pip install virtualenv
virtualenv rose
cd /rosehosting/python/rose
bin/pip install requests
cd ..
source rose/bin/activate
pip install requests
cd rose
bin/python


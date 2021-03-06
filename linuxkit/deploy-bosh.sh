#!/bin/bash

gaol -t 127.0.0.1:8888 \
  create -n \
  deploy-bosh -p \
  --network 10.144.0.0/16 \
  -r /var/vcap/cache/workspace.tar \
  -m /var/vcap:/var/vcap \
  -m /var/vcap/cache:/var/vcap/cache

gaol -t 127.0.0.1:8888 \
  run deploy-bosh --attach -c /usr/bin/deploy-bosh

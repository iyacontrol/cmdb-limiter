#!/bin/sh
cmdb-limiter &
envoy -c /etc/cmdb/service-envoy.yaml --service-cluster service${SERVICE_NAME}

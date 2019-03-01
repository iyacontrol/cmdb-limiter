FROM envoyproxy/envoy-alpine:v1.9.0
ADD ./cmdb-limiter /usr/local/bin/cmdb-limiter
ADD ./start_service.sh /usr/local/bin/start_service.sh
RUN chmod u+x /usr/local/bin/start_service.sh 
RUN chmod u+x /usr/local/bin/cmdb-limiter
ENTRYPOINT /usr/local/bin/start_service.sh


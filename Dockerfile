FROM geekidea/alpine-a:3.9
RUN GRPC_HEALTH_PROBE_VERSION=v0.2.0 && \
    wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64 && \
    chmod +x /bin/grpc_health_probe
ADD ./cmdb-limiter /usr/local/bin/cmdb-limiter
ADD ./start_service.sh /usr/local/bin/start_service.sh
# RUN chmod u+x /usr/local/bin/start_service.sh 
RUN chmod u+x /usr/local/bin/cmdb-limiter
# ENTRYPOINT /usr/local/bin/start_service.sh
ENTRYPOINT [ "/usr/local/bin/cmdb-limiter" ]


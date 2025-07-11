FROM alpine:3.22

LABEL version "1.0.20"
LABEL description "Sysbench as Docker Image"

ARG version="1.0.20-r3"

RUN apk add --no-cache --purge --clean-protected -u \
 ca-certificates sysbench=$version \
 && rm -rf /var/cache/apk/*

ENTRYPOINT [ "sysbench" ]
CMD [ "--help" ]

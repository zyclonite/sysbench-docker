FROM alpine:3.13

LABEL version "1.0.20"
LABEL description "Sysbench as Docker Image"

RUN apk add --no-cache --purge --clean-protected -u \
 -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
 ca-certificates sysbench \
 && rm -rf /var/cache/apk/*

ENTRYPOINT [ "sysbench" ]
CMD [ "--help" ]

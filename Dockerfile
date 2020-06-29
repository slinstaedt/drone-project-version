FROM kamalook/drone-plugin-base

RUN apk add --no-cache git
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "docker-entrypoint.sh" ]

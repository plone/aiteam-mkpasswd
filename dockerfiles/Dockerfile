FROM alpine:3.9
LABEL maintainer "Sven <sven@so36.net>" \
    org.label-schema.vendor = "Plone AI"

COPY dockerfiles/creator.sh /usr/local/bin/creator.sh
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN adduser -s /bin/false -D -H aiteam \
    && apk --no-cache add \
    bash \
    pwgen \
    tini \
    su-exec

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

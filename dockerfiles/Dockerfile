FROM alpine:latest
LABEL maintainer "Sven <sven@so36.net>" \
    org.label-schema.vendor = "Plone AI"

RUN adduser -s /bin/false -D -H aiteam \
    && apk --no-cache add \
    bash \
    pwgen \
    tini \
    su-exec


COPY dockerfiles/creator.sh /usr/local/bin/creator.sh
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
#ENTRYPOINT ["bash"]

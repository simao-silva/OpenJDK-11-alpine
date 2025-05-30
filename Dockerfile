FROM alpine:3.22.0

ARG VERSION="11.0.27_p6-r0" # renovate: datasource=repology depName=alpine_3_22/openjdk11 versioning=loose

RUN apk add --no-cache openjdk11="${VERSION}" && \
    rm -rf /var/cache/apk/* /tmp/*

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

ENV PATH=${PATH}:${JAVA_HOME}/bin

CMD ["jshell"]

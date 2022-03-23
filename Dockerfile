FROM alpine:3.15.2

RUN apk update && \
    apk add --no-cache openjdk11 && \
    rm -rf /var/cache/apk/* /tmp/*

ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"

ENV PATH=${PATH}:${JAVA_HOME}/bin

CMD ["jshell"]

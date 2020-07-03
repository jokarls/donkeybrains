FROM alpine:3.7

ARG VERSION=3.1.9-2020-06-24-1cc9d3a70

RUN apk --update add --no-cache openjdk8 wget unzip bash

RUN mkdir /opt && \
    cd /opt && \
    wget -q https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-lin-${VERSION}.zip -O connect-iq.zip && \
    unzip connect-iq.zip -d connect-iq && \
    rm -f connect-iq.zip

ENV PATH $PATH:/opt/connect-iq/bin

CMD ["monkeyc", "-v"]

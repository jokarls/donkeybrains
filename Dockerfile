FROM alpine:3.7

ARG VERSION

RUN apk --update add --no-cache openjdk8 wget unzip bash

RUN mkdir /opt && \
    cd /opt && \
    wget -q https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-lin-${VERSION}.zip -O ciq.zip && \
    unzip ciq.zip -d ciq && \
    rm -f ciq.zip

ENV PATH $PATH:/opt/ciq/bin

CMD ["monkeyc", "-v"]

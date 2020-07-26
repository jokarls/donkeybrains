FROM alpine:3.7 AS download

ARG VERSION=3.1.9-2020-06-24-1cc9d3a70

RUN apk --update add --no-cache curl unzip

WORKDIR /download
RUN curl -o connect-iq.zip https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-lin-${VERSION}.zip && \
    unzip connect-iq.zip

FROM alpine:3.7

RUN apk --update add --no-cache openjdk8 bash

WORKDIR /connect-iq
COPY --from=download download/bin bin

ENV PATH $PATH:/connect-iq/bin

CMD ["monkeyc", "-v"]

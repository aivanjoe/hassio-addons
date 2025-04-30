ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache   git   nodejs   npm   python3   make   g++   bash

# Install Zigbee2MQTT
RUN git clone --depth 1 --branch dev https://github.com/Koenkk/zigbee2mqtt.git /app
WORKDIR /app
RUN npm ci --omit=optional

COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "./run.sh" ]
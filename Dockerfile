FROM pullenti/pullenti-server AS server
WORKDIR /app

COPY custom.xml conf.xml

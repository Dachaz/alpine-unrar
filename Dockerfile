FROM ogomez/arm32v7-alpine
MAINTAINER Dachaz <dachaz@dachaz.net>
RUN apk add --no-cache --update unrar && rm -rf /var/cache/apk/*
VOLUME /files
WORKDIR /files
ENTRYPOINT ["unrar"]

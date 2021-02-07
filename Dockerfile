FROM alpine
MAINTAINER Nitin Bansal <nitinbansal85@gmail.com>
ADD VERSION .

ENV HUGO_VERSION 0.80.0
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux-64bit

RUN apk update && apk add py-pygments && apk add git && apk add bash && rm -rf /var/cache/apk/*

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz /usr/local/
RUN tar xzf /usr/local/${HUGO_BINARY}.tar.gz -C /usr/local/bin/ \
	&& rm /usr/local/${HUGO_BINARY}.tar.gz

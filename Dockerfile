FROM python:3-alpine
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV PYFLAKES_VERSION=2.3.1

RUN apk add --no-cache --virtual .run-deps git \
 && pip install pyflakes==$PYFLAKES_VERSION \
 && mkdir -p /code

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["pyflakes"]

FROM python:2-alpine
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV PYFLAKES_VERSION=1.1.0

RUN pip install pyflakes==$PYFLAKES_VERSION

ENTRYPOINT ["pyflakes"]
CMD ["/code"]

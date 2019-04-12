FROM java:8-alpine

MAINTAINER Dick Snel <dick.snel@ictu.nl>

ENV PROJECT_NAME "generic"

RUN apk update && \
    apk add bash curl wget && \
    rm -rf /tmp/* /var/cache/apk/*

RUN wget -qO- -O owasp.zip http://dl.bintray.com/jeremy-long/owasp/dependency-check-5.0.0-M2-release.zip && \
    unzip owasp.zip && \
    rm owasp.zip && \
    mv dependency-check /tmp/

RUN /tmp/dependency-check/bin/dependency-check.sh --updateonly

ADD docker-entrypoint.sh /tmp/docker-entrypoint.sh

RUN chmod +x /tmp/docker-entrypoint.sh

WORKDIR /tmp/report

ENTRYPOINT ["/tmp/docker-entrypoint.sh"]

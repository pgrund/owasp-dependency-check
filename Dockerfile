FROM owasp/dependency-check:5.0.0-M2

LABEL maintainer="Dick Snel <dick.snel@ictu.nl>"

ENV PROJECT_NAME "generic"

RUN mkdir /tmp/data
RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly --data /tmp/data

ADD docker-entrypoint.sh /tmp/docker-entrypoint.sh

USER root

RUN chmod +x /tmp/docker-entrypoint.sh

USER dependencycheck

WORKDIR /tmp/report

ENTRYPOINT ["/tmp/docker-entrypoint.sh"]

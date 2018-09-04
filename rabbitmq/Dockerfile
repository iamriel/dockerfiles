FROM rabbitmq:3.6-management-alpine

COPY healthcheck.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/healthcheck.sh

HEALTHCHECK CMD sh /usr/local/bin/healthcheck.sh

EXPOSE 4369 5671 5672 15671 15672 25672

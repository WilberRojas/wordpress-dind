FROM docker:dind

WORKDIR /app

COPY scripts/docker-compose.yaml .
COPY scripts/.env .
COPY scripts/entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["entrypoint.sh"]

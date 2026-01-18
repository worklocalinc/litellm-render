FROM ghcr.io/berriai/litellm:main-latest

COPY config.yaml /app/config.yaml

ENV LITELLM_CONFIG_PATH=/app/config.yaml
ENV PORT=8000

EXPOSE 8000

CMD ["--config", "/app/config.yaml", "--port", "8000"]

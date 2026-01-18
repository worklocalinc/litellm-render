FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY config.yaml /app/config.yaml

ENV LITELLM_CONFIG=/app/config.yaml
ENV PORT=8000

EXPOSE 8000

# Start LiteLLM proxy with the config
CMD ["litellm", "--config", "/app/config.yaml", "--port", "8000", "--host", "0.0.0.0"]

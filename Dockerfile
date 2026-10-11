FROM php:8.5.11-cli-bookworm

COPY --from=composer/composer:2.10.3-bin /composer /usr/local/bin/composer

RUN apt-get update \
    && apt-get install -y --no-install-recommends unzip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

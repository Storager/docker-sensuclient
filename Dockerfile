FROM sstarcher/sensu:1.0.0

RUN apt-get update \
    && apt-get install -y build-essential \
    && sensu-install -p http \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
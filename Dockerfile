FROM sstarcher/sensu:1.0.0

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 40976EAF437D05B5 \
    && apt-get update \
    && apt-get install -y build-essential \
    && sensu-install -p http \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
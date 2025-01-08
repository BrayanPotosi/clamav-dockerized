FROM ubuntu:24.04

WORKDIR /tmp/

RUN apt update \
    && apt-get install -y clamav clamav-daemon \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

RUN freshclam

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

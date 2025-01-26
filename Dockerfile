# Koristi Alpine kao bazu za minimiziranje veličine
FROM alpine:3.18

# Instaliraj osnovne alate
RUN apk add --no-cache \
    python3 \
    py3-pip \
    bash \
    curl \
    unzip \
    jq \
    git \
    openssl \
    ca-certificates

# Instaliraj Checkov
RUN pip3 install --no-cache-dir checkov

# Proveri instalaciju svih alata
RUN checkov --version

# Podrazumevani komandni interfejs
CMD ["/bin/bash"]


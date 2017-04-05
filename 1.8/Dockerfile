FROM golang:1.8

ARG TAG

COPY glide-install.sh /tmp/glide-install.sh
RUN chmod +x /tmp/glide-install.sh \
    && sleep 1 \
    && /tmp/glide-install.sh \
    && rm -rf /tmp/glide-install.sh

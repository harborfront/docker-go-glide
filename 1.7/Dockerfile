FROM golang:1.7

ARG TAG

COPY glide-install.sh /tmp/glide-install.sh
RUN chmod +x /tmp/glide-install.sh \
    && sleep 1 \
    && /tmp/glide-install.sh \
    && rm -rf /tmp/glide-install.sh
WORKDIR /go/src/app
ENV GLIDE_HOME /go/src/app

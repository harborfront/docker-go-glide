FROM golang:1.8

ARG TAG

ENV TINI_VERSION v0.14.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

COPY glide-install.sh /tmp/glide-install.sh
RUN chmod +x /tmp/glide-install.sh \
    && sleep 1 \
    && /tmp/glide-install.sh \
    && rm -rf /tmp/glide-install.sh \
    && mv /go/bin/glide /bin/glide

WORKDIR /go/src/app
ENV GLIDE_HOME /go/src/app

ENTRYPOINT ["/tini", "--"]
CMD ["glide"]

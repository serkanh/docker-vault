FROM progrium/busybox
MAINTAINER serkan haytac <shaytac at gmail >
ENV VAULT_VERSION 0.3.1
ADD config /config
ADD https://dl.bintray.com/mitchellh/vault/vault_${VAULT_VERSION}_linux_amd64.zip /tmp/vault.zip
RUN cd /bin \
	&& unzip /tmp/vault.zip \
	&& chmod +x /bin/vault \ 
        && rm /tmp/vault.zip

EXPOSE 8200
ENV VAULT_ADDR "http://127.0.0.1:8200"


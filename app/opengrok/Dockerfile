FROM repo.tenzin.io/hub/opengrok/docker:1.7

# add homelab CA certificate
COPY files/homelab-ca.crt /usr/local/share/ca-certificates/homelab-ca/homelab-ca.crt
RUN update-ca-certificates

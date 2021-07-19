FROM repo.tenzin.io/hub/sourcegraph/server:3.29.1

COPY files/homelab-ca.crt /usr/local/share/ca-certificates/homelab-ca.crt
RUN update-ca-certificates

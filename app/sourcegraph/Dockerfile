FROM repo.home.internal/hub/sourcegraph/server:3.34.2

COPY files/internal-ca.crt /usr/local/share/ca-certificates/internal-ca/internal-ca.crt
RUN update-ca-certificates

# Build stage
FROM alpine AS build

RUN apk add --no-cache \
    curl \
    docker \
    tar && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    rm kubectl

# Final stage
FROM jenkins/jenkins:lts

USER root

COPY --from=build /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=build /usr/bin/docker /usr/bin/docker

USER jenkins
FROM registry.access.redhat.com/ubi9:9.2-755 

USER root

RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm && \
    dnf clean all

RUN dnf -y install s3fs-fuse && \
    dnf clean all

USER 1001

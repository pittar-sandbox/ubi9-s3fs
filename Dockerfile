FROM registry.access.redhat.com/ubi9/openjdk-11:latest

USER root

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

#RUN microdnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm && \
#    microdnf clean all

RUN microdnf -y install s3fs-fuse && \
    microdnf clean all

USER 1001

# Base image
FROM ubuntu:14.04

MAINTAINER Junxiang Wei <junxiang.wei@nodeunify.com>

# Base install
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates

# Install NodeJs 0.11.13
RUN mkdir /nodejs && curl http://nodejs.org/dist/v0.11.13/node-v0.11.13-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

FROM mcr.microsoft.com/devcontainers/cpp:dev-ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
	apt install -y g++-mingw-w64-x86-64 && \
	rm -rf /var/lib/apt/lists/*

ADD https://musl.cc/aarch64-linux-musl-cross.tgz /musl.cc/
RUN tar xzf /musl.cc/aarch64-linux-musl-cross.tgz -C /
ENV AARCH64_LINUX_MUSL_CROSS_PREFIX=/aarch64-linux-musl-cross

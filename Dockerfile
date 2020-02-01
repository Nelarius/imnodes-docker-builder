FROM ubuntu:eoan

RUN apt-get update -q && \
    apt-get install -q -y clang-9 libsdl2-dev wget

RUN wget -O /tmp/premake-5-linux.tar.gz https://github.com/premake/premake-core/releases/download/v5.0.0-alpha14/premake-5.0.0-alpha14-linux.tar.gz && \
    tar xzvf /tmp/premake-5-linux.tar.gz -C /tmp && \
    cp /tmp/premake5 /usr/local/bin && \
    rm -f /tmp/premake-5-linux.tar.gz && \
    rm -f /tmp/premake5

VOLUME "/project"

WORKDIR /project

ENTRYPOINT [ "bash", "-c" ]

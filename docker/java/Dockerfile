FROM openjdk:11

ARG CONTAINER_USER=user
ARG CONTAINER_GROUP=user
ARG HOST_UID=1000
ARG HOST_GID=1000

COPY entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/entrypoint.sh

RUN groupadd -g $HOST_GID $CONTAINER_GROUP && \
    useradd -m -s /bin/bash -u $HOST_UID -g $HOST_GID $CONTAINER_USER

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install zip

USER $CONTAINER_USER
RUN curl -s "https://get.sdkman.io" | bash
RUN echo ". $HOME/.sdkman/bin/sdkman-init.sh; sdk install gradle" | bash
WORKDIR /prj

# USER root
# ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
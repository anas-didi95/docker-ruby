FROM node:8.15.0-stretch-slim

LABEL Anas Juwaidi <anas.didi95@gmail.com>

# Install packages
RUN echo "Install packages" \
    ## Update repos
    && apt-get update \
    ## Install packages
    #&& apt-get install --no-install-recommends -y \
        #git \
    ## Cleanup
    && rm -rf /var/lib/apt/lists/*


# Create home directory
ARG DOCKER_USER_NAME
ARG DOCKER_USER_ID
ARG DOCKER_GROUP_ID
ENV DOCKER_USER_NAME ${DOCKER_USER_NAME:-root}
ENV DOCKER_USER_ID ${DOCKER_USER_ID:-0}
ENV DOCKER_GROUP_ID ${DOCKER_GROUP_ID:-0}
RUN echo "Create working and user directory for ${DOCKER_USER_NAME} with UID ${DOCKER_USER_ID}, GID ${DOCKER_GROUP_ID}" \
    ## Create working directory
    && mkdir -p /home/code \
    ## Create user directory 
    && mkdir -p /home/${DOCKER_USER_NAME} \
    ## Set permission
    && chown -R ${DOCKER_USER_ID}:${DOCKER_GROUP_ID} /home/code \
    && chown -R ${DOCKER_USER_ID}:${DOCKER_GROUP_ID} /home/${DOCKER_USER_NAME}
WORKDIR /home/code

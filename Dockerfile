FROM nginx
LABEL maintainer="hosta1<>"

RUN apt update
RUN apt upgrade
RUN apt install -y --no-install-recommends
RUN apt install -y nodejs npm

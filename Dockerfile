FROM nginx
LABEL maintainer="hosta1"

RUN apt update && apt upgrade \
    && apt install -y --no-install-recommends \
    && apt install -y nodejs npm

RUN mv /usr/share/nginx/html/ /usr/share/nginx/html_/ \
    && mkdir html
COPY Revealjs/ /usr/share/nginx/html/
COPY Customization/ /usr/share/nginx/html/
COPY reveal.js-plugins/ /usr/share/nginx/html/plugin/
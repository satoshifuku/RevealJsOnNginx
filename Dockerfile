FROM nginx
LABEL maintainer="hosta1<>"

RUN apt update
RUN apt upgrade
RUN apt install -y --no-install-recommends
RUN apt install -y nodejs npm
RUN mv /usr/share/nginx/html/ /usr/share/nginx/html_/
RUN mkdir html
COPY Revealjs/index.html /usr/share/nginx/html/
COPY Revealjs/gruntfile.js /usr/share/nginx/html/
COPY Revealjs/plugin/ /usr/share/nginx/html/plugin/
COPY Revealjs/lib/ /usr/share/nginx/html/lib/
COPY Revealjs/js/ /usr/share/nginx/html/js/
COPY Revealjs/css/ /usr/share/nginx/html/css/
# RUN npm start

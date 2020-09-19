# Reveal.js on Nginx

If you want the docker image, check the following url

> https://hub.docker.com/r/hosta1/revealjs_nginx

## Revealjs_nginx

Revealjs_nginx is a Docker image which runs Reveal.js hosted on a Nginx server. 
The hosted server shows your slide with writing Markdown on your local directory.

### What is reveal.jp?

Reveal.jp is a project which makes presentation slide using HTML.

Demo: http://revealjs.com/ 

Github repository: https://github.com/hakimel/reveal.js


### Why does Reveal.js needed to be hosted on a Nginx server ?

Revealjs_nginx supports Markdown, which means can you create your presentation slide with an external Markdown.
In order to use an external Markdown, you have to run Revealjs from a local web server.


### Usage

Make a directory.

    mkdir my_slide
 
Download and copy /js_md/, /md/ into /my_slide/ from the following 

https://github.com/satoshifuku/RevealJsOnNginx/tree/master/Customization


Run a Docker container with this command.

    cd my_slide
    docker run -d -v "${PWD}/md/:/usr/share/nginx/html/md/" -v "${PWD}/js_md/:/usr/share/nginx/html/js_md/" -p 8000:80 hosta1/revealjs_nginx

Open the following URL in a web browser.

http://localhost:8000/

You edit /md/slide.md when you change contents of  your slide

Page separator: 

- \n\n\n\n: horizontal
- \n\n\n: vertical


## Change  theme in your markdown

Put the following in your markdown.

    <link rel="stylesheet" href="css/theme/white.css">

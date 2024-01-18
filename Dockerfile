FROM httpd:2.4

WORKDIR /usr/app

COPY . /usr/local/apache2/htdocs/

EXPOSE 8080
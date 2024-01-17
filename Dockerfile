FROM httpd:2.4

WORKDIR /app

COPY . /usr/local/apache2/htdocs/

RUN yarn install --production

EXPOSE 8080

CMD ["html", "/public-html"]
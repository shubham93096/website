FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install zip -y
RUN apt-get install unzip -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

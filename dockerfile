FROM devopsedu/webapp
MAINTAINER Ngu
ADD https://github.com/nguchen/DevOpsCertProject.git /var/www/html
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND

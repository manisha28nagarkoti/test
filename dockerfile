FROM ubuntu
RUN apt -y update && apt-get -y install nginx wget curl
COPY index.html /var/www/html/
RUN rm /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-enabled/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

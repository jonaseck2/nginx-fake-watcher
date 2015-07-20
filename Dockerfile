FROM nginx

ADD run.sh /
ADD watcher.sh /
ADD nginx.conf /etc/nginx/
ADD proxy_params /etc/nginx/
ADD default-site /etc/nginx/sites-enabled/

WORKDIR /

RUN chmod +x run.sh watcher.sh

CMD ./run.sh

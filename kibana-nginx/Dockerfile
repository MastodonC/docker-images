FROM nginx:1.11
COPY site.conf /etc/nginx/conf.d/default.conf
CMD /bin/bash -c "sed -i s/ES_HOST/$ES_HOST/ /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"

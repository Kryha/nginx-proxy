FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
CMD sed -i "s,DOMAIN_URL,$DOMAIN_URL,g" /etc/nginx/conf.d/default.conf && nginx -g "daemon off;"

FROM nginx:latest
RUN sed -i 's/nginx/babba/g' /usr/share/nginx/html/index.html
EXPOSE 80

FROM nginx:1.17-alpine
RUN rm /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html
EXPOSE 80
bfbfdhdfhfhddh
CMD ["nginx", "-g", "daemon off;"]

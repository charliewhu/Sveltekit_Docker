FROM nginx:1.23.3-alpine-slim

# remove existing config
RUN rm /etc/nginx/conf.d/default.conf

# copy our config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Must use versions in `major.minor.patch` format as that is expected by a regex
# (`^FROM\s+\S+:\K[0-9]+\.[0-9]+\.[0-9]+`) used in other scripts
FROM nginx:1.27.2-alpine-slim

# In order to run the Docker image in non-root mode, the Nginx binaries need to
# be opened up to non-root users
RUN chmod -R a+w /var/cache/nginx/ \
  && touch /var/run/nginx.pid \
  && chmod a+w /var/run/nginx.pid \
  && rm /etc/nginx/conf.d/*

COPY main.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

EXPOSE 80
EXPOSE 443
EXPOSE 3000
EXPOSE 3001
EXPOSE 3002
EXPOSE 4000
EXPOSE 5000
EXPOSE 5001
EXPOSE 8000
EXPOSE 8080
EXPOSE 8888
EXPOSE 9000

USER nginx

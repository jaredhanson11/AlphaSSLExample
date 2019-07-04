FROM tiangolo/uwsgi-nginx-flask:latest
COPY ./website/ /app/website/
COPY ./nginx/alpha_website.conf /etc/nginx/conf.d/alpha_website.conf
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
RUN apt-get update
RUN apt-get install certbot python-certbot-nginx -y
ENTRYPOINT ["bash"]

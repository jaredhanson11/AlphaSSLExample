docker run -it -p 8080:8080 -v "$PWD/website/:/app/website/" -v "$PWD/nginx/alpha_website.conf:/etc/nginx/conf.d/alpha_website.conf" -v "$PWD/nginx/nginx.conf:/etc/nginx/nginx.conf" tiangolo/uwsgi-nginx-flask bash
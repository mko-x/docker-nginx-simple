# docker-nginx

# Quickstart

Use this as base for your image:

- Create your Dockerfile
```Dockerfile
FROM mk0x/docker-nginx
ADD your/www/ /var/www/
```
- Build it
```bash
docker build -t yourname/your-image-name
```   
- Run it
```bash
docker run -d --name yourname -p 80:80 yourname/your-image-name
```

# Info

A high-performance Nginx base image for Docker to serve static websites. It will serve anything in the `/var/www` directory.

# nginx.conf

The nginx.conf and mime.types are pulled with slight modifications from
the h5bp Nginx HTTP server boilerplate configs project at
https://github.com/h5bp/server-configs-nginx

Further modifications taken from https://t37.net/nginx-optimization-understanding-sendfile-tcp_nodelay-and-tcp_nopush.html and the nginx home.

# docker-squid

build the container

```bash
docker build -t docker-squid:latest .
```

generate passwd file with own users

```bash
docker run --rm docker-squid:latest htpasswd -nb user password >> passwd
```

run the container

```bash
docker run -d -p 3128:3128 -v $(pwd)/passwd:/etc/squid/passwd docker-squid:latest
```

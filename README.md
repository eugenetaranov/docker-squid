# docker-squid

## Manual build

build the container

```bash
docker build -t docker-squid:latest .
```

generate passwd file with own users

```bash
docker run --rm docker-squid:latest htpasswd -nb {USER} {PASSWORD} >> passwd
```

run the container

```bash
docker run -d -p 3128:3128 -v $(pwd)/passwd:/etc/squid/passwd docker-squid:latest
```

## Prebuilt from Dockerhub

pull from dockerhub 

```bash
docker pull eugenetaranov/docker-squid
```

generate passwd file with own users

```bash
docker run --rm eugenetaranov/docker-squid htpasswd -nb {USER} {PASSWORD} >> passwd
```

run the container

```bash
docker run -d -p 3128:3128 -v $(pwd)/passwd:/etc/squid/passwd eugenetaranov/docker-squid
```

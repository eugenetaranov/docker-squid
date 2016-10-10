# docker-squid

build the container
docker build -t docker-squid:latest .

generate passwd file with own users
docker run --rm docker-squid:latest htpasswd -nb user password >> passwd

run the container
docker run -d -p 3128:3128 -v $(pwd)/passwd:/etc/squid/passwd docker-squid:latest

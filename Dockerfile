MAINTAINER	eugene@taranov.me
FROM	ubuntu
RUN		apt-get update && \
		apt-get install -y squid apache2-utils
EXPOSE	3128
COPY	entrypoint.sh /
COPY	squid.conf /etc/squid/squid.conf
COPY	passwd /etc/squid/passwd
CMD		/entrypoint.sh

RUN		chmod +x /entrypoint.sh

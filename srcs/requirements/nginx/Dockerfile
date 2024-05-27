FROM alpine:3.15.0

RUN apk --no-cache update && apk --no-cache add nginx openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/mmazzocc.crt \
	-keyout /etc/nginx/ssl/mmazzocc.key \
	-subj "/C=IT/ST=Rome/L=Rome/O=42 School/OU=mmazzocc/CN=mmazzocc/"

COPY ./conf/nginx.conf /etc/nginx/conf.d

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

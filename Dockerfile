FROM alpine:3.14
RUN apk add --no-cache bc grep iputils bind-tools curl wget openssh tcpdump tcptraceroute nmap jq
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "100", "5000" ]

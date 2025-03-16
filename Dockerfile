FROM debian

WORKDIR /dashboard

COPY install.sh /tmp/install.sh

RUN chmod +x /tmp/install.sh && /tmp/install.sh

ENTRYPOINT ["./entrypoint.sh"]

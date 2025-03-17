FROM debian

WORKDIR /dashboard

COPY install.sh entrypoint.sh sshwifty.conf.json ./

RUN chmod +x ./install.sh entrypoint.sh && ./install.sh

ENTRYPOINT ["./entrypoint.sh"]

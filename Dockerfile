FROM debian

WORKDIR /dashboard

COPY install.sh entrypoint.sh ./

RUN chmod +x ./install.sh && ./install.sh

ENTRYPOINT ["./entrypoint.sh"]

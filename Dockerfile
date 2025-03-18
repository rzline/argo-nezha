FROM debian

WORKDIR /dashboard

COPY install.sh entrypoint.sh ./

RUN chmod +x ./install.sh entrypoint.sh && ./install.sh && rm install.sh

ENTRYPOINT ["./entrypoint.sh"]

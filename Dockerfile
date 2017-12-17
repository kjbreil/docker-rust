FROM kjbreil/lgsm

LABEL maintainer="Kjell Breiland <kjell.breiland@gmail.com>"

ENV RUST_UPDATE = 0
ENV RUST_FORCE_UPDATE = 0

RUN bash linuxgsm.sh rustserver && \
  /home/server/rustserver update-lgsm

EXPOSE 28015/tcp 28015/udp 28016/tcp

COPY entrypoint.sh entrypoint.sh

CMD ["bash", "entrypoint.sh"]
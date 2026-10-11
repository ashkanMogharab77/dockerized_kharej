# FROM ghcr.io/mhsanaei/3x-ui:3.4.2
FROM ghcr.io/mhsanaei/3x-ui:2.9.4

RUN apk update && apk upgrade 
# && \
# apk add nano ffmpeg python3 py3-pip && \
# rm -rf /var/cache/apk/*

#WORKDIR /app
# COPY users_bot_telegram/ ./users_bot_telegram
#COPY downloader_bot/ ./downloader_bot

# WORKDIR /app/users_bot_telegram
# RUN pip install --no-cache-dir --break-system-packages -r requirements

#WORKDIR /app/downloader_bot
#RUN pip install --no-cache-dir --break-system-packages -r requirements

WORKDIR /app

ENTRYPOINT []

# CMD ["/bin/sh", "-c", "python3 /app/downloader_bot/bot.py & python3 /app/users_bot_telegram/bot.py &exec /app/x-ui run"]
CMD ["/bin/sh", "-c", "exec /app/x-ui run"]

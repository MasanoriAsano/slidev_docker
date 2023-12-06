FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    curl \
    libnss3 \ 
    libnspr4 \
    libgbm1 \
    libasound2 \
    fonts-ipafont-gothic \
    fonts-ipafont-mincho

RUN npm install n -g -y

RUN n lts
RUN apt purge nodejs npm -y

COPY entrypoint.sh /

WORKDIR /slidev

RUN npm install playwright-chromium
RUN npx playwright install

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

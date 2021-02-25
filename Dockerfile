FROM node:14.16.0-slim

RUN apt-get update \
    && apt-get install build-essential python -y \
    && apt-get install gconf-service libasound2 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget -y \
    && apt-get autoremove -y \
    && yarn config set registry https://registry.npm.taobao.org --global \
    && yarn config set disturl https://npm.taobao.org/dist --global \
    && wget --directory-prefix=/usr/share/fonts --output-document=/usr/share/fonts/SourceHanSans-Regular.ttc "https://github.com/adobe-fonts/source-han-sans/blob/release/OTC/SourceHanSans-Regular.ttc?raw=true"
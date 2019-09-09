FROM node:8.16.1-stretch-slim

RUN apt-get update
RUN apt-get install calibre -y
RUN apt-get install git -y

RUN git clone https://github.com/nicohaenggi/SafariBooks-Downloader.git 
RUN cd SafariBooks-Downloader && \
    sed -i 's/www.safaribooksonline.com/learning.oreilly.com/' lib/safari/index.js && \ 
    npm install -g && \
    cd ..

WORKDIR safari-dockloader
COPY script.sh script.sh
COPY parse.py parse.py


CMD [ "bash",  "./script.sh" ]




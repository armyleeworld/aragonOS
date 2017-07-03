FROM node:boron

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app


COPY package.json /usr/src/app

RUN npm install -g truffle
RUN npm install truffle@beta
RUN npm i

COPY . /usr/src/app

RUN rm -rf contracts/zeppelin


ENTRYPOINT ["bash", "./entrypoint.sh"]
CMD ["bash"]

FROM node:18-alpine3.19

COPY . /src

WORKDIR /src

RUN npm install

RUN npm install -g /src

ENTRYPOINT ["sonar-report"]

CMD ["--help"]

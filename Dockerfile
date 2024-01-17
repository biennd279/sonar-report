FROM node:18-alpine3.19

COPY . /sonar-report

WORKDIR /sonar-report

RUN npm install

RUN npm install -g /sonar-report

WORKDIR /src

ENTRYPOINT ["sonar-report"]

CMD ["--help"]

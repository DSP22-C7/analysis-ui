FROM node:12-slim AS analysis-ui

COPY package*.json /tmp/
RUN cd /tmp && npm i
WORKDIR /usr/src/app
COPY . .
CMD ["npm", "run", "build"]

EXPOSE 3000

CMD ["npm", "run", "dev"]

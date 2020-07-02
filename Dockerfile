FROM node:12.18.2-stretch-slim

WORKDIR /home/node/app
COPY . .
RUN npm i

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "node", "src/index.js" ]
USER node
FROM node:14.15.4-buster
RUN mkdir -p /home/node/app && chown -R node:node /home/node/app
WORKDIR /home/node/app
USER node
COPY --chown=node:node . .
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=5000
EXPOSE 8080
CMD [ "npm", "start" ]

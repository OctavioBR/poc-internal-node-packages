FROM node:10.15

WORKDIR /opt

COPY index.js /opt
COPY package.json /opt
# COPY package-lock.json /opt
# COPY yarn.lock /opt

COPY node_modules /opt
# RUN npm install

CMD ["node", "index.js"]

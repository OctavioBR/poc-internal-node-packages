FROM node:10.15

WORKDIR /opt

COPY index.js /opt
COPY package.json /opt

# One lockfile should be sent into image, enabling deterministic npm/yarn installs
# COPY package-lock.json /opt
# COPY yarn.lock /opt

COPY node_modules/ /opt/node_modules

# node_modules should be populated by package managers instead of copying from developer's machine
# RUN npm install

CMD ["node", "index.js"]

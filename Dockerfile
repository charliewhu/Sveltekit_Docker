FROM node:18-alpine

RUN npm install -g pnpm

WORKDIR /app

# copy dependencies to workdir
COPY package.json /app/

# install dependencies as stated in lockfile
RUN pnpm install 

# copy project to workdir
COPY . /app/

# remove old build and rebuild
RUN pnpm build

EXPOSE 5173
ENTRYPOINT ["pnpm", "dev"]

# expose port 3000 and run build
#EXPOSE 3000
#CMD ["node", "build"]

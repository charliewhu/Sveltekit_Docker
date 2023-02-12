FROM node:18-alpine

RUN npm install -g pnpm

WORKDIR /app

# copy dependencies to workdir
COPY package.json pnpm-lock.yaml /app/

# install dependencies as stated in lockfile
RUN pnpm install --frozen-lockfile

# copy project to workdir
COPY . /app/
RUN pnpm build

# expose port 3000 and run build
EXPOSE 3000
CMD ["node", "build"]

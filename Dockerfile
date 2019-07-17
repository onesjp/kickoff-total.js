FROM node:lts-alpine
LABEL MAINTAINER = "ones"

RUN mkdir -p /app
WORKDIR /app

COPY ./ /app

#Time & alpine need add tzdata
RUN apk add --no-cache tzdata
ENV TW=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TW /etc/localtime && echo $TW > /etc/timezone

RUN npm install --production


EXPOSE 8000
CMD ["npm", "start"]
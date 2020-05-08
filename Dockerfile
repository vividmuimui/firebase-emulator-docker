FROM node:lts-alpine
WORKDIR /app

RUN apk --no-cache add openjdk8
RUN yarn global add firebase-tools

ADD firebase.json .

CMD firebase emulators:start --only firestore

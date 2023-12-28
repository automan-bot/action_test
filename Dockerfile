FROM node:16.20-alpine as builder
#设置时区和语言环境变量
ENV TZ Asia/Shanghai
ENV NODE_ENV production
WORKDIR /usr/app
COPY . .
# COPY --from=builder /usr/app/nest-cli.json .
RUN  npm install --production
#设置当前镜像的数据卷路径
#VOLUME /usr/app/upload
EXPOSE 3000
CMD npm start
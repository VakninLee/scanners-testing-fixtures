FROM alpine:3.18
ENV APP_ENV=production
ARG PORT=8080
RUN apk add --no-cache curl bash
EXPOSE 8080
CMD ["echo", "hello from pipeline"]

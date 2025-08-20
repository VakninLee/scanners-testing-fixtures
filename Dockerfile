FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    curl \
    git \
    jq

RUN pip install flask requests

ENV APP_ENV=production
ENV LOG_LEVEL=debug

COPY ./src /app

EXPOSE 8080

CMD ["python", "/app/server.py"]

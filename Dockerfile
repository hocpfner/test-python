from alpine:latest
RUN apk add --no-cache py3-pip \
    && pip install --upgrade pip \
    && apk --no-cache add curl \
    && apk --no-cache add vim

WORKDIR /app
COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python3"]
CMD ["app.py"]

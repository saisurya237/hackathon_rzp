FROM python:3.10

RUN pip install mlflow && \
    pip install awscli --upgrade --user && \
    pip install boto3==1.24.10

ENV PORT 5000

COPY ./script.sh /

WORKDIR /
RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]
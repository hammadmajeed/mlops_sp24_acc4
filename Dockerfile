FROM python:3.13.0a4-alpine3.19
RUN mkdir -p /app/src
COPY ./src/. /app/src
WORKDIR /app/src
RUN ["pwd"]
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
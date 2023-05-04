FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN hello_flask create-db
RUN hello_flask populate-db
RUN hello_flask add-user -u admin -p admin
EXPOSE 5000
CMD ["hello_flask", "run"]

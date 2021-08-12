#base image
FROM python:3.8-slim-buster

#create working directory
WORKDIR /devops-project

#adding source code into the image
COPY ./devops-project
#instaling modules into the image
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["app.py"]


FROM ubuntu
LABEL Name=ovh-analytics-spark-openstack-image Version=0.0.1

WORKDIR /app
ADD . /app

# RUN apt-get -y update && apt-get install -y fortunes
RUN apt-get -y update && apt-get install -y python python-pip
RUN pip install python-openstackclient
#CMD ["sh", "-c", "/build-image.sh"]



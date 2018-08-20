FROM ubuntu
LABEL Name=ovh-analytics-spark-openstack-image Version=0.0.1
LABEL Descriptin="Provides a public openstack image for Spark as a Service in OVH"
LABEL Author="Mojtaba Imani mojtaba.imani@corp.ovh.com"

WORKDIR /app
ADD . /app
# RUN apt-get -y update && apt-get install -y fortunes
RUN apt-get -y update \
    && apt-get install -y \
    python \
    python-pip \
    ssh \
    && pip install --upgrade --no-cache-dir pip python-openstackclient

CMD ["sh", "-c", "/app/build-image.sh"]



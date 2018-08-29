# OVH Analytics Spark Service Image 

The Openstack public image for "Spark as a Service" in OVH alanytics platform

## Build by bash script

Install openstack cli by this command: 

```
apt-get -y update \
    && apt-get install -y \
    python \
    python-pip \
    ssh \
    && pip install --upgrade --no-cache-dir pip python-openstackclient
```

Export your Openstack credentials as environment variables.

```
export OS_AUTH_URL=xxxxx
export OS_TOKEN=xxxx
```

Build Spark as a Service base image for Spark cluster deployment on OVH Public Cloud infrastructure:

```./build-image.sh```

## Build by Docker

Build a docker image: 

```
docker build -t sparkdocker . 
```

Run the docker image that you build: 

```
docker run -it --rm sparkdocker
```

# Credits

This work is inspired by:
- https://github.com/Hugoch/ovh-analytics-openstack-images

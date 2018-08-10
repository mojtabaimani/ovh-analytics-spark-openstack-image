# OVH Analytics Spark Openstack Image 

The Openstack public image for "Spark as a Service" in OVH alanytics platform

## Build

Export your Openstack credentials as environment variables.

```
export OS_PROJECT_ID=xxxxx
export OS_USERNAME=xxxxx
export OS_PASSWORD=xxxxx

export OS_AUTH_URL=xxxxx
export OS_REGION_NAME=xxxx
```

Build Spark as a Service base image for Spark cluster deployment on OVH Public Cloud infrastructure:

```./build-image.sh```


# Credits

This work is inspired by:
- https://github.com/Hugoch/ovh-analytics-openstack-images

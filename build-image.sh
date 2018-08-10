#!/usr/bin/env bash

server=sparkservicetemp
echo creating server instance 
openstack server create --flavor b2-7 --image "Ubuntu 16.04" --key-name mojtaba-ovhmac --wait --min 1 --max 1 "$server"


sleep 6s


ip=$(openstack server list --name "$server" |grep -E -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}") 
echo IP of base server is : "${ip}"

echo installing base image packages 

ssh-keygen -f "$HOME/.ssh/known_hosts" -R "${ip}"
let retry=0
while ! ssh -o "StrictHostKeyChecking no"  ubuntu@"${ip}" /bin/bash < install-packages.sh 
do
  sleep 5s 
  echo "Retrying connection to $server" >&2
  let retry++
  echo retry:$retry
  if [ $retry -gt 5 ]
  then
    echo too many retry
    break
  fi
done

openstack server stop "$server"

sleep 6s

openstack server image create --name sparkclusterservice "$server"

sleep 6s 
echo Please wait for few minutes for image to be uploaded to the Glance system. you can check if the image has Active status or not by command "openstack image list"
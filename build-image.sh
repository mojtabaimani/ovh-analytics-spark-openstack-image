#!/usr/bin/env bash

server=sparkservicetemp
echo TOKEN=$OS_TOKEN
echo AUTH URL=$OS_AUTH_URL
TOKEN_SWITCHES=" --os-token $OS_TOKEN --os-auth-url $OS_AUTH_URL --os-auth-type token --os-region-name SBG3"
ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''
openstack keypair create  --public-key $HOME/.ssh/id_rsa.pub container_key  $TOKEN_SWITCHES

echo creating server instance 
openstack server delete "$server" $TOKEN_SWITCHES
openstack server create --flavor b2-7 --image "Ubuntu 16.04" --key-name container_key --wait --min 1 --max 1 "$server" $TOKEN_SWITCHES
if [ $? -ne 0 ]
then
    echo openstack server creation failed.
    exit 1
fi  

sleep 6s


ip=$(openstack server list --name "$server" $TOKEN_SWITCHES |grep -E -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}") 
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

openstack server stop "$server" $TOKEN_SWITCHES

sleep 6s

openstack image delete sparkclusterservice $TOKEN_SWITCHES
sleep 2s 

openstack server image create --name sparkclusterservice "$server" $TOKEN_SWITCHES
if [ $? -ne 0 ]
then
    echo openstack image creation failed.
    exit 1
fi 
openstack keypair delete container_key  $TOKEN_SWITCHES

sleep 6s 
echo Please wait for few minutes for image to be uploaded to the Glance system. you can check if the image has Active status or not by command "openstack image list"
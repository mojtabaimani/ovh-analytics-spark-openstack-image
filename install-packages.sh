#!/usr/bin/env bash
sudo apt-get update 
sudo apt-get update 

sudo apt install -y default-jre
sudo apt-get update


echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> .bashrc 
echo 'export ZEPPELIN_PORT=9090' >> .bashrc #default port (in case user doesn't set it )
echo 'export SPARK_HOME=/home/ubuntu/spark-2.2.1-bin-hadoop2.7' >> .bashrc # (default version, in case user does not set it)
source .bashrc


wget https://archive.apache.org/dist/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz
tar xvzf spark-2.3.1-bin-hadoop2.7.tgz
rm spark-2.3.1-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz 
tar xvzf spark-2.3.0-bin-hadoop2.7.tgz
rm spark-2.3.0-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.2.2/spark-2.2.2-bin-hadoop2.7.tgz
tar xvzf spark-2.2.2-bin-hadoop2.7.tgz
rm spark-2.2.2-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz
tar xvzf spark-2.2.1-bin-hadoop2.7.tgz
rm spark-2.2.1-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.7.tgz
tar xvzf spark-2.2.0-bin-hadoop2.7.tgz
rm spark-2.2.0-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.1.3/spark-2.1.3-bin-hadoop2.7.tgz
tar xvzf spark-2.1.3-bin-hadoop2.7.tgz
rm spark-2.1.3-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.1.2/spark-2.1.2-bin-hadoop2.7.tgz
tar xvzf spark-2.1.2-bin-hadoop2.7.tgz
rm spark-2.1.2-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.1.1/spark-2.1.1-bin-hadoop2.7.tgz
tar xvzf spark-2.1.1-bin-hadoop2.7.tgz
rm spark-2.1.1-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.1.0/spark-2.1.0-bin-hadoop2.7.tgz
tar xvzf spark-2.1.0-bin-hadoop2.7.tgz
rm spark-2.1.0-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-2.0.2/spark-2.0.2-bin-hadoop2.7.tgz
tar xvzf spark-2.0.2-bin-hadoop2.7.tgz
rm spark-2.0.2-bin-hadoop2.7.tgz

wget https://archive.apache.org/dist/spark/spark-1.6.3/spark-1.6.3-bin-hadoop2.6.tgz
tar xvzf spark-1.6.3-bin-hadoop2.6.tgz
rm spark-1.6.3-bin-hadoop2.6.tgz

wget https://archive.apache.org/dist/zeppelin/zeppelin-0.8.0/zeppelin-0.8.0-bin-all.tgz
tar xvzf zeppelin-0.8.0-bin-all.tgz
rm zeppelin-0.8.0-bin-all.tgz

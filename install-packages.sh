#!/usr/bin/env bash
sudo apt-get update 
sudo apt-get update 

sudo apt install -y default-jre
sudo apt-get update


echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> .bashrc 
echo 'export ZEPPELIN_PORT=9090' >> .bashrc #default port (in case user doesn't set it )
echo 'export SPARK_HOME=/home/ubuntu/spark-2.2.1-bin-hadoop2.7' >> .bashrc # (default version, in case user does not set it)
source .bashrc



wget http://mirror.ibcp.fr/pub/apache/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz
tar xvzf spark-2.3.0-bin-hadoop2.7.tgz

wget http://apache.mediamirrors.org/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz
tar xvzf spark-2.2.1-bin-hadoop2.7.tgz

wget http://mirror.ibcp.fr/pub/apache/spark/spark-2.1.2/spark-2.1.2-bin-hadoop2.7.tgz
tar xvzf spark-2.1.2-bin-hadoop2.7.tgz

wget http://mirrors.ircam.fr/pub/apache/spark/spark-1.6.3/spark-1.6.3-bin-hadoop2.6.tgz
tar xvzf spark-1.6.3-bin-hadoop2.6.tgz

wget http://mirror.ibcp.fr/pub/apache/zeppelin/zeppelin-0.7.3/zeppelin-0.7.3-bin-all.tgz
tar xvzf zeppelin-0.7.3-bin-all.tgz

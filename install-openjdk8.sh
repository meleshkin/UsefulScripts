#!/bin/bash
wget https://builds.shipilev.net/openjdk-jdk8/openjdk-jdk8-latest-linux-x86_64$
tar xf openjdk-jdk8-latest-linux-x86_64-release.tar.xz
mkdir /opt/openjdk8
mv j2sdk-image/* /opt/openjdk8
rm -r j2sdk-image
rm openjdk-jdk8-latest-linux-x86_64-release.tar.xz
echo JAVA_HOME=/opt/openjdk8 >> /etc/profile
echo PATH='$PATH:$JAVA_HOME/bin' >> /etc/profile
export JAVA_HOME
export PATH

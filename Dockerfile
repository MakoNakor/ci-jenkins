FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy main" | tee -a /etc/apt/sources.list
RUN apt-get update && apt-get install -y --allow-downgrades ant maven gradle openjdk-6-jdk openjdk-6-jre openjdk-6-jre-headless openjdk-7-jdk openjdk-7-jre openjdk-7-jre-headless tzdata-java tzdata=2016d-0+deb7u1 openjdk-8-jdk openjdk-8-jdk-headless openjdk-8-jre openjdk-8-jre-headless
# drop back to the regular jenkins user - good practice
USER jenkins

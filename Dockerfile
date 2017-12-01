FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy main" | tee -a /etc/apt/sources.list
RUN apt-get update && apt-get install -y ant maven gradle openjdk-6-jdk openjdk-6-jre openjdk-6-jre-headless openjdk-7-jdk openjdk-7-jre openjdk-7-jre-headless tzdata-java
# drop back to the regular jenkins user - good practice
USER jenkins

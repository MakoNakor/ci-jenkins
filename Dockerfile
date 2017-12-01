FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy main" | tee -a /etc/apt/sources.list
RUN apt-get update && apt-get install -y ant maven gradle && apt-get download openjdk-6-jdk openjdk-7-jdk && dpkg --force-all -i openjdk-6-jdk openjdk-7-jdk
# drop back to the regular jenkins user - good practice
USER jenkins

FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ant maven gradle openjdk-6-jdk openjdk-7-jdk openjdk-8-jdk
# drop back to the regular jenkins user - good practice
USER jenkins

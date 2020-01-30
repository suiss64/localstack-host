FROM openshift/base-centos7

USER 0

#
RUN yum install python3 -y && yum install python3-devel -y

#
RUN yum update -y

#
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash && yum install -y nodejs && yum install -y java-11-openjdk-devel && yum -y install maven

#
RUN pip3 install -U flask-cors && pip3 install moto && pip3 install psutil

#
RUN pip3 install localstack && pip3 install awscli-local

#
EXPOSE 4567-4597 8080

## Test 1: i
# On va essayer de lancer les deux commandes suivantes :
# Charge les libs :
RUN localstack start --host
# Start les serveurs :
CMD localstack start --host 
# && localstack web
# ENTRYPOINT /entrypoint.sh

## Test 2: puis dans le terminal j'ai été obligé de lancer 2 fois la commande : localstack start --host (la 1ere fois charge les paquets et la 2eme lance les serveurs !?!)
# CMD while true; do sleep 1; done

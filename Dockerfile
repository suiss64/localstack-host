FROM openshift/base-centos7

USER 0

#
RUN yum install python3 -y && yum install python3-devel -y

#
#RUN yum update -y

#
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash && yum install -y nodejs && yum install -y java-11-openjdk-devel && yum -y install maven

#
RUN pip3 install -U flask-cors && pip3 install -U moto && pip3 install requests --user
# RUN pip3 install psutil

#
RUN pip3 install localstack --user && pip3 install awscli-local --user

#
EXPOSE 4567-4597 8080

#
CMD localstack start --host

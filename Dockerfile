FROM openshift/base-centos7

USER 0

RUN yum update -y

RUN yum install -y python3 

# && yum install -y nodejs && yum install -y java-11-openjdk-devel && yum -y install maven

RUN pip3 install "localstack[full]"

#RUN  pip3 install -U flask-cors && pip3 install moto && pip3 install psutil

#RUN pip3 

#
CMD localhost start --host

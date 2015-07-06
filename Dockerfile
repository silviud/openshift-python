# flask app without virtualenv

FROM centos:centos7

RUN yum upgrade -y

RUN yum install -y python-setuptools
RUN yum install -y python-pip
RUN yum install -y git
RUN yum clean all -y
RUN pip install flask


RUN git clone https://github.com/silviud/openshift-python && cd openshift-python

EXPOSE 5000
CMD []
ENTRYPOINT ["/usr/bin/python", "server.py"]

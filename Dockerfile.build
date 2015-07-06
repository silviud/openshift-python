# flask app without virtualenv

FROM centos:centos7

RUN yum upgrade -y

RUN yum install -y python-setuptools
RUN yum install -y git
RUN rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum install -y python-pip
RUN yum clean all -y
RUN pip install flask


RUN git clone https://github.com/silviud/openshift-python && cd openshift-python

EXPOSE 5000
CMD []
ENTRYPOINT ["/usr/bin/python", "openshift-python/server.py"]

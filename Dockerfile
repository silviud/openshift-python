# flask app without virtualenv

FROM silviudicu/openshift

EXPOSE 5000
CMD []
ENTRYPOINT ["/usr/bin/python", "openshift-python/server.py"]

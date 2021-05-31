From ubuntu:14.04
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN mkdir /opt/req && mkdir /opt/webapp
COPY requirements.txt /opt/req
RUN pip install -qr /opt/req/requirements.txt
expose 5000

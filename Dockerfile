From ubuntu:18.04
env DEBIAN_FRONTEND=noninteractive 
run apt-get update && apt-get install -y -q python-all python-pip
RUN mkdir /opt/req && mkdir /opt/webapp
add requirements.txt /opt/req
RUN pip install -qr /opt/req/requirements.txt
expose 5000

From ubuntu:18.04
env DEBIAN_FRONTEND=noninteractive 
run apt-get update && apt-get install -y -q python-all python-pip
RUN mkdir /opt/req && mkdir /opt/webapp
add requirements.txt /opt/req
add app.py /opt
RUN pip install -qr /opt/req/requirements.txt
expose 5000
cmd ["python", "/opt/app.py"]
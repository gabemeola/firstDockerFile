FROM centos:7
RUN yum install -y \
    gcc-c++ \
    make \
    git \
    libpng12.x86_64
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - \ 
    && yum -y install nodejs \
    && npm i -g yarn

WORKDIR /app
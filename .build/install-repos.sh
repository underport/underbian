#!/usr/bin/env bash

set -ueo pipefail

DEBIAN_FRONTEND=noninteractive \
apt-get update -qq

DEBIAN_FRONTEND=noninteractive \
apt-get install --yes -qq --no-install-recommends --no-install-suggests \
            subversion \
            automake \
            autoconf \
            binutils-dev \
            build-essential \
            ca-certificates \
            curl \
            cmake \
            default-libmysqlclient-dev \
            libcurl4-openssl-dev \
            libedit-dev \
            libgsm1-dev \
            libjansson-dev \
            libogg-dev \
            libpopt-dev \
            libresample1-dev \
            libspandsp-dev \
            libspeex-dev \
            libspeexdsp-dev \
            libsqlite3-dev \
            libsrtp2-1 \
            libsrtp2-dev \
            libssl-dev \
            libtool \
            libvorbis-dev \
            libxml2-dev \
            libxslt1-dev \
            mysql-common \
            gnupg \
            portaudio19-dev \
            python3-dev \
            python3-pip \
            uuid \
            uuid-dev \
            xmlstarlet \
            unixodbc \
            unixodbc-dev \
            tcpdump \
            python3-setuptools \
            git \
            vim \
            wget \
            libnewt-dev \
            odbcinst \
            libncurses5-dev
    > /dev/null
apt purge -y --auto-remove
pip install alembic mysqlclient

# install mysql odbc driver
# DEBIAN_FRONTEND=noninteractive \
# apt-get update -qq

cd /usr/src
wget -Olibmyodbc.deb http://ftp.us.debian.org/debian/pool/main/m/mariadb-connector-odbc/odbc-mariadb_3.1.9-1_amd64.deb && \
dpkg -i libmyodbc.deb
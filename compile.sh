#!/bin/sh

mkdir /root/debs/
cd /root/output/
git clone https://github.com/ceph/calamari.git
cd calamari
cd debian
mv source source.old
cd ..
dpkg-buildpackage


cd /root/output/
git clone https://github.com/ceph/calamari-clients.git
cd calamari-clients
make build-real

cd /root/output/
git clone https://github.com/ceph/Diamond.git
cd Diamond
git checkout calamari
dpkg-buildpackage
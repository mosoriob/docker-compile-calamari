#!/bin/sh

cd ~
git clone https://github.com/ceph/calamari.git
cd calamari
cd debian
mv source source.old
cd ..
dpkg-buildpackage


cd ~
git clone https://github.com/ceph/Diamond.git
cd Diamond
git checkout calamari
dpkg-buildpackage


cd ~
git clone https://github.com/ceph/Diamond.git
cd Diamond
git checkout calamari
dpkg-buildpackage
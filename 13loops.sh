#!/bin/bash/
#all args in $@
for i in $@
do
yum install $i -y
done
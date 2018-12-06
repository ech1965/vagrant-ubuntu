#!/bin/sh
HDD=/dev/sda
PART_NUMBER=1
/etc/resize.sh $HDD $PART_NUMBER apply
resize2fs ${HDD}${PART_NUMBER}


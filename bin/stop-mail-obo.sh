#!/bin/sh
RUN_DIR=`pwd`
cd ..
BASE_DIR=`pwd`

cd $BASE_DIR/email/mail-obo && docker-compose down

cd $RUN_DIR

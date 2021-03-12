#!/bin/sh
RUN_DIR=`pwd`
cd ..
BASE_DIR=`pwd`


cd $BASE_DIR/appserver/etracs && docker-compose down

cd $BASE_DIR/appserver/epayment && docker-compose down

cd $BASE_DIR/appserver/market && docker-compose down

cd $BASE_DIR/appserver/obo && docker-compose down


cd $BASE_DIR/system/notification && docker-compose down

cd $BASE_DIR/system/download && docker-compose down

cd $BASE_DIR/system/queue && docker-compose down


cd $BASE_DIR/email/mail-primary && docker-compose down

cd $BASE_DIR/email/mail-obo && docker-compose down

cd $RUN_DIR
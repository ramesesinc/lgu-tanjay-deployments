#!/bin/sh
RUN_DIR=`pwd`
cd ..
BASE_DIR=`pwd`

cd $BASE_DIR/email/mail-obo && docker-compose down

cd $BASE_DIR/email/mail-obo && docker-compose up -d

cd $BASE_DIR/email/mail-obo && docker-compose logs -f

cd $RUN_DIR

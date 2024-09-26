#!/bin/sh
#

APP_DIST_DIR=./dist
INSTALL_DIR=.

echo "APP_DIST_DIR=${APP_DIST_DIR}"
echo "INSTALL_DIR=${INSTALL_DIR}"
[ ! -d "${APP_DIST_DIR}" ] && echo "${APP_DIST_DIR} Not Exists." && exit 1
[ ! -d "${INSTALL_DIR}" ] && install -d ${INSTALL_DIR}

echo "Deploy to ${INSTALL_DIR}/"
rm -rf ./static chunk-vendors.*.js index.*.js
cp -af ${APP_DIST_DIR}/* ${INSTALL_DIR}

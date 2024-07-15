#!/bin/bash
# clup: A simple command line utility to upload files to azure cloud.
# Usage: clup.sh <file>

# variables
FILE=$1
ACCOUNT_NAME=$2
CONTAINER_NAME=$3
FILE_NAME=$(basename "$FILE")

# colors
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
RESET='\e[0m'

# check if file is provided
if [ -z $FILE ]; then
    echo "${YELLOW}To use, provide path to a file to upload.${RESET}"
    exit 1
fi

# check if file exists
if [ ! -f $FILE ]; then
    echo -e "${RED}File not found!${RESET}"
    exit 1
fi

# check if the file  is accessible
if [ ! -r $FILE ]; then
    echo -e "${YELLOW}$FILE_NAME is not accessible!${RESET}"
    exit 1
fi

# check if account name variable is an empty string
if [ -z $ACCOUNT_NAME ]; then
    echo -e "${YELLOW}Account name is not set!. Input as second argument${RESET}"
    exit 1
fi

if [ -z $CONTAINER_NAME ]; then
    echo -e "${YELLOW}Container name is not set!${RESET}"
    exit 1
fi

# upload file to azure cloud
az storage blob upload --account-name $ACCOUNT_NAME --container-name $CONTAINER_NAME --name $FILE_NAME --file $FILE
# azcopy copy $FILE 'https://<storage-account-name>.blob.core.windows.net/<container-name>/<blob-name>?<sas-token>'

# error handling in case of failure to upload 
if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to upload $FILE_NAME!${RESET}"
    exit 1
fi

echo -e "${GREEN}$FILE_NAME uploaded successfully!${RESET}"


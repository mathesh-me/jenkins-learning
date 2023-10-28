#!/bin/bash

FIRST_NAME=$1
LAST_NAME=$2
VERIFY=$3

if [ "$VERIFY" = "true" ] ; then
echo "Welcome , $FIRST_NAME $LAST_NAME"
else
echo "Please , Verify Yourself"
fi

# A Simple Script for executing in Jenkins Shell
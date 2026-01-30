#!/bin/bash

echo "enter user_name:"
read USER_NAME
echo "enter Password: "
read PASSWORD
TIMESTAMP=$(date)

echo "hello $USER_NAME"
echo "logged_in time $TIMESTAMP"

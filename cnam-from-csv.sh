#!/bin/bash

sid=
token=

while IFS=, read col1 col2
do
    num=$(tr -dc '0-9' <<< $col1)
    cnam=$(curl -s "https://api.opencnam.com/v3/phone/$num?account_sid=$sid&auth_token=$token")
    echo "$num,$cnam"
done < in.csv

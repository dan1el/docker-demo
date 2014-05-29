#!/bin/bash
for ((i = 1; i <= $1; i++)); do
curl -s localhost/welcome | grep "You are being served by"
done

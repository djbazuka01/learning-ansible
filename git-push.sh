#!/bin/bash

git add .
echo "Add comments for commit"
read message
git commit -m "$message"
git config credential.helper store
git push origin main


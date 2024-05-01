#!/bin/bash


git pull
git add .
read -p "Add comments for commit: " message
git commit -m "$message"
git config credential.helper store
git push origin main


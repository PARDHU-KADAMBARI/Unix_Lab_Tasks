#!/bin/bash

git init

ls 

git status

git add .

git status

git commit -m "Initial commit: Adding assignments"

git config --global user.name "PARDHU-KADAMBARI"

git config --global user.email "pardhukadambari@gmail.com"

git remote add origin https://github.com/PARDHU-KADAMBARI/UNIX_LAB.git

git push -u origin master

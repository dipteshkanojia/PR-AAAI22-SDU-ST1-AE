#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "====================="
    echo "No arguments supplied"
    echo "git with -m 'changes'"
    echo "====================="
    git add .
    git commit -m "changes"
    git push origin main
elif [ -z "$1" ]
  then
    echo "========================"
    echo "empty arguments supplied"
    echo "   git with -m 'changes'"
    echo "========================"
    git add .
    git commit -m "changes"
    git push origin main
else
    echo "======================"
    echo "    Message found     "
    echo "======================"
    git add .
    git commit -m "$1"
    git push origin main
fi

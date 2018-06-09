#!/bin/bash
if [[ $# == 0 || $1 == 0 ]];
then
  exit 1
fi
head -n $1 resourses/surnames.txt|grep -v Q-Chem|sed 's/\.//' |sed 's/\-//'

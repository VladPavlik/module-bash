#!/bin/bash
case "$1" in 
  "-u" | "--url" )
    grep -o -E "https:\/\/([[:alnum:]]|\.|\/)+" $2 | uniq
    ;;
  "-e" | "--email" )
    grep -o -E  "[[:alnum:]]+\@[[:alpha:]]+\.[[:alpha:]]+" $2 | uniq
    ;;
  *)
    eixt 1
    ;;
esac

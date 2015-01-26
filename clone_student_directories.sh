#!/bin/bash

# clone the student repos, add homework 1, and push back

declare student_home="/Users/nicholasnagle/Dropbox/git_root/students"
declare -a uid=(sbleakne vbrown23 aingra14 smarkley imorris1 enield dpaulse1 proychow sselecm2 jwatki22 swoolfol kyoumans jfornade klandolt tsonnich kswagger ntromble)
declare class_org="UTK-geog415-s15"
declare token="3a5c2a2a9293dd2379a718c3263a531b6cee93bf"


mkdir $student_home

for i in "${uid[@]}"
do
  echo "$i"
  cd $student_home
  git clone git@github.com:UTK-geog415-s15/"$i".git
  cd "i"
  cp -R ../../homework/homework1 .
  rm -rf homework1/packrat
  git add *
  git commit -a -m "added homework 1"
  git push origin master
done

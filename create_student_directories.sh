#!/bin/bash

# Initialize the github repository for geog 415

declare class_home="/Users/nicholasnagle/Dropbox/git_root/UTK-geog415-s15"
declare -a uid=(sbleakne vbrown23 aingra14 smarkley imorris1 enield dpaulse1 proychow sselecm2 jwatki22 swoolfol kyoumans jfornade klandolt tsonnich kswagger kthiel ntromble)
declare class_org="UTK-geog415-s15"
declare token="3a5c2a2a9293dd2379a718c3263a531b6cee93bf"

mkdir $class_home
cd $class_home

#for i in "${uid[@]}"
#do
#  rm -rf $class_home/${i}
#done

for i in "${uid[@]}"
do
  echo "$i"
  curl -i -u nnnagle:$token https://api.github.com/orgs/$class_org/repos -d '{"name": "'$i'"}'
done

for i in "${uid[@]}"
do
  mkdir $class_home/${i}
  cd $class_home/${i}
  touch README.md
  git init
  git add README.md
  git commit -m "first commit"
  git remote add origin git@github.com:"$class_org"/"$i".git
  git push -u origin master
done

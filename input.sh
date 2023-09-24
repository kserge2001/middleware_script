#!/bin/bash


read -p "What is your name ?  " NAME 
read -p "Are you taking the class with utrains? " c

if  [ $c = yes ]
 then
  echo " Good job $NAME !! keep enjoying and change your life!!"
else
 echo "That is not a good idea  $NAME Please check the training  website immediatly and enroll ( utrains.org)"

fi 


#echo " your name is: $NAME and you answer $c to the utrains class taking"




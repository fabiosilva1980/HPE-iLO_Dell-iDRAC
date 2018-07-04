#!/bin/bash

echo "Digite o LOGIN" #
read user

echo "Digite a SENHA"
read -s pass

echo "Quais os ranges para teste?" #caso tenha mais de um separar por vírgula
read range

nmap -sP {$range} | grep "scan report" >> /tmp/hostlist.txt; 
for ips in `awk -F' ' '{ print $5 }' /tmp/hostlist.txt` ; 
do a=`curl --connect-timeout 3 -k -L https://"$ips"/json/login_session --data '{"method":"login","user_login":"$user","password":"$pass"}' --silent | grep session_key `; 
if [ -z "$a" ] ; 
then echo $ips Failed; 
else echo $ips $user Logged >> result_logged.txt; 
echo $ips Logged ; fi; done;

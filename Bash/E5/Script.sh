#!/bin/bash


function IAPIKey(){

    echo -n "Introduzca su API Key: "
    read -r -s APIKey

}

function correos(){
    grep -v '^ *#' < correos.txt | while IFS= read -r line
  do
  correo=$line
  API=$(curl -s https://haveibeenpwned.com/api/v3/breachedaccount/"$correo" -H 'hib-api-key':"$APIKey")
  if [[ "$API" = "" ]];then
   echo -e "\n El correo $correo ha sido vulnerado."
  else
   echo -e "\n El correo $correo no ha sido vulnerado "
   fi
   echo
   done < correos.txt
}

IAPIKey
correos

#237d199916384e0aaef2a6508410d82b

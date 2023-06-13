#!/bin/bash

###################################################################
#   This script is used for manage multiples docker containers    #
#   Author: Homets                                                #
#   Created: 2023/05/25                                           #
###################################################################

function script_help()
{
  echo -e "\nUsage: ./docker_manager.sh <action> [container | image] [numbers]"
  echo -e "Exemple: ./docker_manager.sh --create alpine 5\n\noption:"
  echo -e "  --create, -c\tCreate container(s) of image provided in arguments [container]"
  echo -e "  --remove, -r\tDelete container(s) provided in arguements [container]"
  echo -e "  --start, -i\tStart container(s) provided in arguments [container]"
  echo -e "  --stop, -s\tStop container(s) provided in arguments [container]\n"

}


if [ "$1" == "--help" ] || [ "$1" == "-h" ];then
  script_help
elif [ "$1" == "--create" ] || [ "$1" == "-c" ];then
  
  image_name=""
  container_number=1

  if [[ -z "$2" ]];then
      echo -e "need to specify an image name"
  else
      image_name="$2"
  fi

  if [[ "$3" != "" ]];then
      container_number="$3"
  fi


  echo $container_number

elif [ "$1" == "--remove" ] || [ "$1" == "-r" ];then
  echo "remove"
elif [ "$1" == "--start" ] || [ "$1" == "-i" ];then
  echo "start"
elif [ "$1" == "--stop" ] || [ "$1" == "-s" ];then
  echo "stop"
else
  script_help
fi


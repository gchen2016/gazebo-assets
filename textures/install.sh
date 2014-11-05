#!/bin/bash

usage() {
  echo $0 path_to_gazebo_textures_files
  echo "This tools will be used temporarely, it will copy the textures file inside the gazebo directory"
  echo "the path is something like /usr/share/gazebo-4.0/media/materials/textures"
}

if [[ $# != 1 ]]; then
  usage
  exit -1
else
  dest_path=$1
  sudo cp -r ./textures/* "$dest_path"
fi

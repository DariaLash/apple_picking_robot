#!/bin/bash

# File directory full path
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd ${SCRIPTPATH} # navigate to this directory

# For this you have youtube-dl to be installed
# https://github.com/rg3/youtube-dl/

yt_video_path=$1

if [ ! -z "$yt_video_path" ] # If input argument provided
  then
    echo "Will Download youtube video: $yt_video_path"
    youtube-dl --audio-quality 1 --output "src/image_processing/test_video.%(ext)s" $yt_video_path
    echo "Video saved in src/image_processing/"
fi

# make project, see src/CMakeList.txt
# (it's automatically generated by catkin workspace)
catkin_make

# source global variables which may be needed for project
source devel/setup.sh

# run ROS project loop
roslaunch launch/project.launch
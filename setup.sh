#!/usr/bin/bash
echo "Welcome to ROS master node !!"
echo "Buiud and lanch ..."
docker build -t rosimage ./	# bulid 'rosimage' image using Dockerfile in current

DIR=$(cd $(dirname $0); pwd)
docker run -it \
-v $DIR"/.ros/:/root/.ros/" \
-v $DIR"/catkin_ws/:/root/catkin_ws/" \
--device=/dev/video0:/dev/video0 \
rosimage	# run ros on docker image
exit 0

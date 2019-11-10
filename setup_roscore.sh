#!/usr/bin/bash
echo "Welcome to ROS master node !!"
echo "Buiud and lanch ..."
docker rm -f $(docker ps -aq)
docker network rm $(docker network ls -f type=custom -q)
docker build -t rosimage ./	# bulid 'rosimage' image using Dockerfile in current
docker network create rosnet	# create network to commnicate with each node
docker run -it \
--name master \
--net rosnet \
rosimage roscore	# run roscore on docker image
exit 0

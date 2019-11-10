# install ros image as base image
FROM ros:melodic

# always run at initializing OS
RUN apt-get update && apt-get install -y
ENV ROS_MASTER_URI=http://master:11311


source /opt/ros/indigo/setup.zsh

## ROS Developpement Workspace - standalone
source ~/Developpements/indigo_workspace_rosbuild/setup.zsh

## ROS Developpement Workspace for turtlebot
#source ~/Developpements/turtlebotWS/turtlebot/devel/setup.zsh
export TURTLEBOT_3D_SENSOR=kinect

export ROS_MASTER_URI=http://localhost:11311 #Adress where ROSCORE is running
#export ROS_HOSTNAME=localhost

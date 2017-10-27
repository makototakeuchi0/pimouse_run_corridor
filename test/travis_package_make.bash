#!/bin/bash -xve

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor/

#clone pimouse_ros
cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/makototakeuchi0/pimouse_ros

cd ~/catkin_ws
catkin_make

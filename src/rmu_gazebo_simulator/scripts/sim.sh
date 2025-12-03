#!/bin/zsh

export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia

# Start ign simulation
source install/setup.sh

ros2 launch rmu_gazebo_simulator bringup_sim.launch.py

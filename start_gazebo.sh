#!/bin/bash
set -euo pipefail

# Simplified script to launch only the Gazebo simulation world.

export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WS_DIR="$SCRIPT_DIR"

ROS_SETUP=${ROS_SETUP:-/opt/ros/humble/setup.bash}
OVERLAY_SETUP=${OVERLAY_SETUP:-$WS_DIR/install/setup.bash}

# Source ROS and overlay
set +u  # Temporarily allow unbound variables for ROS setup
cd "$WS_DIR"
source "$ROS_SETUP"
source "install/setup.bash"
set -u

# Launch Gazebo
GAZEBO_CMD=${GAZEBO_CMD:-"ros2 launch rmu_gazebo_simulator bringup_sim.launch.py"}

echo "[start_gazebo.sh] Starting Gazebo simulation world..."
$GAZEBO_CMD

echo "[start_gazebo.sh] Gazebo exited."
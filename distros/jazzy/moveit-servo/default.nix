
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, control-msgs, controller-manager, generate-parameter-library, geometry-msgs, gripper-controllers, joint-state-broadcaster, joint-trajectory-controller, joy, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, pluginlib, realtime-tools, robot-state-publisher, ros-testing, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-servo";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_servo/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "2ef02c78046ec43556bfd04624117a82655b562f8c28d4e64a87ddc633cdca1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ control-msgs controller-manager generate-parameter-library geometry-msgs gripper-controllers joint-state-broadcaster joint-trajectory-controller joy launch-param-builder moveit-common moveit-configs-utils moveit-core moveit-msgs moveit-ros-planning moveit-ros-planning-interface pluginlib realtime-tools robot-state-publisher sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides real-time manipulator Cartesian and joint servoing.";
    license = with lib.licenses; [ bsd3 ];
  };
}
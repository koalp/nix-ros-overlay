
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, orocos-kdl-vendor, python-cmake-module, python3Packages, rclcpp, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-geometry-msgs";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_geometry_msgs/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "ece3bdf22389cd77234453fb336faedfd189dda6721f0d1f22cc61309242c3d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl-vendor python3Packages.numpy tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, resource-retriever, ros-environment, rosgraph-msgs, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-rolling-foxglove-bridge";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/rolling/foxglove_bridge/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "d8fab94c9306bf12d2fe3483637d422121466e2fe796d8d2dd0c5bd1a8aad59d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio nlohmann_json ros-environment websocketpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-cpp openssl rclcpp rclcpp-components resource-retriever rosgraph-msgs zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
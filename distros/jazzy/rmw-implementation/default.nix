
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rcutils, rmw, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-fastrtps-dynamic-cpp, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-jazzy-rmw-implementation";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/jazzy/rmw_implementation/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "2a408c3dff0353aa2b916f4e30e41853467a95e2bbfc511ed7483bb6c68da99a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmw rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-fastrtps-dynamic-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-index-cpp rcpputils rcutils rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake rmw-implementation-cmake ];

  meta = {
    description = "Proxy implementation of the ROS 2 Middleware Interface.";
    license = with lib.licenses; [ asl20 ];
  };
}

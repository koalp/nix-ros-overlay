
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, marti-common-msgs, marti-nav-msgs, rclcpp, swri-geometry-util, swri-math-util, swri-roscpp, swri-transform-util, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-swri-route-util";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_route_util/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "1b109f464cdfbd68c7cbac9d8c629efc7ad468982379437bc0ca1d0431055bd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost marti-common-msgs marti-nav-msgs rclcpp swri-geometry-util swri-math-util swri-roscpp swri-transform-util tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, object-analytics-msgs, ament-cmake, ament-lint-common, sensor-msgs, cv-bridge, message-filters, rclcpp, std-msgs, ament-lint-auto, visualization-msgs, object-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-object-analytics-rviz";
  version = "0.5.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/dashing/object_analytics_rviz/0.5.4-2.tar.gz";
    name = "0.5.4-2.tar.gz";
    sha256 = "874901a15bf24c11822bb67987aa4ccdb7d491c1e663781def6eb0be39b27d1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ object-analytics-msgs sensor-msgs cv-bridge message-filters rclcpp std-msgs visualization-msgs object-msgs geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ object-analytics-msgs sensor-msgs cv-bridge message-filters rclcpp std-msgs visualization-msgs object-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Display object analytics result in rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, geometry-msgs, ignition-math6-vendor, image-transport, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, qt5, rclcpp, resource-retriever, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-default-plugins";
  version = "13.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_default_plugins/13.1.2-1.tar.gz";
    name = "13.1.2-1.tar.gz";
    sha256 = "d5d99056753c84971e5075a2dd5f5a9ec16405b6412a3e7a14476c3946bd434f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-index-cpp ament-lint-auto rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs ignition-math6-vendor image-transport interactive-markers laser-geometry map-msgs nav-msgs pluginlib qt5.qtbase rclcpp resource-retriever rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

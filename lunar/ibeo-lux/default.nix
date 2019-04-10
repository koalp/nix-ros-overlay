
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, network-interface, catkin, ibeo-core, ibeo-msgs, visualization-msgs, pcl-ros, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-ibeo-lux";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/astuff/ibeo_lux-release/archive/release/lunar/ibeo_lux/2.0.1-0.tar.gz;
    sha256 = "c9e95d25cb6c359a7e7b8651912a4f6ed5421db3bdc97c21cb5741c96e672643";
  };

  buildInputs = [ ibeo-core ibeo-msgs pcl-ros std-msgs network-interface visualization-msgs geometry-msgs roscpp ];
  propagatedBuildInputs = [ ibeo-core ibeo-msgs pcl-ros std-msgs network-interface visualization-msgs geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for IBEO LUX'';
    #license = lib.licenses.MIT;
  };
}
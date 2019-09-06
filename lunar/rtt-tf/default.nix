
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt, rtt-geometry-msgs, catkin, rtt-roscomm, tf }:
buildRosPackage {
  pname = "ros-lunar-rtt-tf";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_tf/2.9.2-1.tar.gz;
    sha256 = "34347942751e4f672057430712ea005466e3972bd5c52253608aa658cef579bb";
  };

  buildInputs = [ rtt-geometry-msgs tf rtt rtt-roscomm ];
  propagatedBuildInputs = [ rtt-geometry-msgs tf rtt rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the components of the rtt_tf package'';
    license = with lib.licenses; [ gpl1 ];
  };
}
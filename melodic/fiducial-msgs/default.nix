
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-fiducial-msgs";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/melodic/fiducial_msgs/0.11.0-1.tar.gz;
    sha256 = "f518a98e96490068c7b4d086801cca8b5948d274451c03e1e82221fde3101366";
  };

  buildInputs = [ sensor-msgs message-generation std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing message definitions for fiducials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
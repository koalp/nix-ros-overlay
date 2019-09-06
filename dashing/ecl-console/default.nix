
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-build, ecl-license, ecl-config, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-dashing-ecl-console";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/ecl_console/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "a8a83e04e885a2d239be975e3ad0c2fd9bbb5a259dfe0e9004069e7c4210a4ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

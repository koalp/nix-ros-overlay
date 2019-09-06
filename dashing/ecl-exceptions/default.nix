
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-build, ecl-license, ecl-errors, ament-cmake-ros, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-exceptions";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_exceptions/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "5f7ec3214552caf6bcc640a935dafa1d33ff64dbf7d3c246f6f2a5784f53e2d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-errors ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Template based exceptions - these are simple and practical
     and avoid the proliferation of exception types. Although not
     syntatactically ideal, it is convenient and eminently practical.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

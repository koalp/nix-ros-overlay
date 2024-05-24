
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, rclpy, rosidl-default-generators, rqt-gui, rqt-gui-py, rqt-py-common, rqt-topic, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rqt-moveit";
  version = "1.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_moveit-release/archive/release/jazzy/rqt_moveit/1.0.1-5.tar.gz";
    name = "1.0.1-5.tar.gz";
    sha256 = "84649a31910ce1ea1170c3d733ec121dd70a6b363ec8a645030cf2b6082b65d1";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools rosidl-default-generators ];
  propagatedBuildInputs = [ python-qt-binding rclpy rqt-gui rqt-gui-py rqt-py-common rqt-topic sensor-msgs ];
  nativeBuildInputs = [ python3Packages.setuptools rosidl-default-generators ];

  meta = {
    description = "An rqt-based tool that assists monitoring tasks
   for <a href=\"http://ros.org/wiki/moveit\">MoveIt!</a> motion planner
   developers and users. Currently the following items are monitored if they
   are either running, existing or published:
   <ul>
   <li>Node: /move_group</li>
   <li>Parameter: [/robot_description, /robot_description_semantic]</li>
   <li>Topic: Following types are monitored. Published &quot;names&quot; are ignored.<br/>
       [sensor_msgs/PointCloud, sensor_msgs/PointCloud2,
        sensor_msgs/Image, sensor_msgs/CameraInfo]</li>
   </ul>
   Since this package is not made by the MoveIt! development team (although with
   assistance from the them), please post issue reports to the designated
   tracker (not MoveIt!'s main tracker).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

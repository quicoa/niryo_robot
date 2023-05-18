# Niryo NED and NED2 setup

This repository contains a set of environment and configuration tools to setup
and connect to a Niryo NED or NED2 robot.

The repository and its submodules can be initialized using:

```sh
git clone https://github.com/GerardHarkemaAvans/my_niryo_robot.git --recurse-submodules
```

To start the setup, source the `start_niryo.bash` script or one of the
network-specific startup scripts.  For example:

```sh
source start_niryo.bash
```

or

```sh
source start_niryo_hotspot.sh
```


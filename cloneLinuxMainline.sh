#!/bin/bash

# Clone the kernel to your local machine
git clone https://github.com/torvalds/linux.git linux-5.6
cd linux-5.6

# Find the tag for the version you want
$ git tag -l | grep 5.6

#!/bin/bash

# Clone the kernel to your local machine
git clone git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
cd linux-stable

# Find the tag for the version you want
$ git tag -l | grep 5.6

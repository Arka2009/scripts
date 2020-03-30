#!/bin/bash

# Clone the kernel to your local machine
git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-5.6.git
cd linux-5.6

# Find the tag for the version you want
$ git tag -l | grep 5.6

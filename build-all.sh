#!/usr/bin/env bash

set -e
time ./build-iso
time ./build-vbox
time ./build-vagrant


#!/usr/bin/env bash

flutter analyze
flutter packages get

./runner.sh

flutter test

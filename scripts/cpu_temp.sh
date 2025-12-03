#!/bin/bash

temperature=$(sensors | grep "Package id 0:" | awk '{print $4}' | sed 's/+//;s/.0°C//')

echo "${temperature}"

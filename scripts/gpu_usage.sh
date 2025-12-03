#!/bin/bash

# Получаем загруженность GPU
usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)

# Получаем использование памяти
memory_used=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader,nounits)
temperature=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)

echo "${temperature}℃ ${usage}% ${memory_used}MiB"

#!/bin/bash
ip=$(ip -o route get 8.8.8.8 | awk -F'src | uid' '{print $2}' | xargs)
docker build -t docker-code --build-arg disp="${ip}:0.0" .

#!/bin/bash
#ip=$(ip -o route get 8.8.8.8 | awk -F'src | uid' '{print $2}' | xargs)
docker build -t docker-code --build-arg disp=":0.0" .

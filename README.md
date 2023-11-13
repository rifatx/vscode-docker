# VSCode in Docker

## Linux

- Build image with build.sh

- Run below command as root:
  - `# xhost +local:*`

- Run container with the command below:
  - `docker run -v /tmp/.X11-unix:/tmp/.X11-unix -it --rm --name vscode docker-code`

## Windows

- Build image with build.bat


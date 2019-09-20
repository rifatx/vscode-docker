FROM debian:latest

RUN groupadd -r ucode && \
    useradd --no-log-init -r -g ucode ucode && \
    mkdir -p /home/ucode && \
    chown ucode:ucode -R /home/ucode && \
    apt update && \
    apt install -y curl libnotify4 libnss3 gnupg libxkbfile1 libsecret-1-0 libgtk-3-0 libxss1 libx11-xcb1 libasound2 && \
    curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb && \
    dpkg -i /tmp/vscode.deb && \
    rm /tmp/vscode.deb
   
USER ucode
ARG disp
ENV DISPLAY $disp

ENTRYPOINT ["code", "--wait"]

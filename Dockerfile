# FROM ubuntu:latest

# RUN apt update && \
#     bash -c "$(wget -q https://pacstall.dev/q/install -O -)" && \
#     apt install -y openjdk-17-jre
FROM nixos/nix

COPY . /app

WORKDIR /app
RUN nix-shell --run "bash -c ./install.sh"


CMD nix-shell --command msh
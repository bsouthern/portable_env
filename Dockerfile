FROM rust:latest

WORKDIR /host_home
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    python3-pip \
    iputils-ping \
    tmux \
    micro \
    xclip \
    nmap

# Cargo packages
RUN cargo install bat starship

# Pip packages
RUN pip install requests

# Prompt and Shell
COPY ./.config /.config
RUN cp /.config/.bashrc ~/.bashrc
RUN cp /.config/.tmux.conf ~/.tmux.conf

# Pull config files...
# Git clone blah....
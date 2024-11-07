# dotfiles

Personal configuration files for Linux Mint.

## Setup Guide

1. Clone the repository:

```sh
git clone https://github.com/Zelvios/Zelvios.git --recurse-submodules -j$(nproc) ~/dotfiles
```

2. Enter the cloned repository.

```sh
cd ~/dotfiles
```

3. Run the [installation script](./scripts/install.sh):

```
./scripts/install.sh
```

### Or, as a one liner:

```sh
git clone https://github.com/Zelvios/Zelvios.git --recurse-submodules -j$(nproc) ~/dotfiles && cd ~/dotfiles && ./scripts/install.sh
```


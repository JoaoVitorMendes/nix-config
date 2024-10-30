# Nixos config
## _Uma configuração básica do Nixos_

[![built with nix](https://img.shields.io/static/v1?logo=nixos&logoColor=white&label=&message=Built%20with%20Nix&color=41439a)](https://builtwithnix.org)

## Features

- Flake
- Home-manager

Uma configuração muito básica do nixos, não sou um usuário mais avancado nixos, não sei nada de nix, mas irei melhorar essa configuração.

## instalação

Uma instalação básica e rápida

Clone esse repo
```sh
git clone https://github.com/JoaoVitorMendes/nixos-config
cd nixos-config
cd nixos
```
Dentre entre, delete o hardware-configuration.nix, pois isso é de uso hardware pessoal
```sh
rm hardware-configuration.nix
```
Gere seu hardware-configuration.nix que se adeque
```sh
sudo nixos-generate-config
```
Mude <b> joao, </b> para seu nome host da maquina no arquivo
```
flake.nix
home-manager/home.nix
nixos/configuration.nix
```
Feito as devidas alterações, entre com
```sh
nixos-rebuild switch --flake .#seunome && home-manager switch --flake .
```

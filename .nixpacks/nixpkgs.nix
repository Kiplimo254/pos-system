{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  php = php80;
  phpPackages = php80Packages;
in
  buildEnv {
    name = "php-env";
    paths = [
      php
      phpPackages.composer
      nodejs
      nginx
    ];
  }
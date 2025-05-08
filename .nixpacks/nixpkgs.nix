{ pkgs ? import <nixpkgs> {} }:

pkgs.buildEnv {
  name = "php-env";
  paths = with pkgs; [
    php80
    php80Packages.composer
    nodejs
    nginx
  ];
}
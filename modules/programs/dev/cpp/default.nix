{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    clang_22
    gcc
    cmake
  ];
}

{
  pkgs ? import <nixpkgs> { }
}:
pkgs.mkShellNoCC {
  packages = with pkgs; [

    ferium
    minecraft-server-hibernation
    wget
    temurin-jre-bin-17
    bash
  ];
}

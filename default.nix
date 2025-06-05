{pkgs ? import <nixpkgs> {}}:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "hx-lsp";
  version = "0.2.8";
  useFetchCargoVendor = true;
  src = pkgs.fetchFromGitHub {
    owner = "erasin";
    repo = "hx-lsp";
    rev = "b0fab6d543962aaf2b7e544c901a096b7a03948d";
    # sha256 = pkgs.lib.fakeHash;
    sha256 = "sha256-nbzx/HV5X6KeDX5ELrb98y9zOrCPUMlI11wgBR+0hTM=";
  };
  cargoHash = "sha256-6+E1A0vAJYR6DijqIET6Vl6kWiWF9pweKUZRk0wS2CQ=";
  # cargoHash = pkgs.lib.fakeHash;
}

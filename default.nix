{pkgs ? import <nixpkgs> {}}:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "hx-lsp";
  version = "0.2.8";
  useFetchCargoVendor = true;
  src = pkgs.fetchFromGitHub {
    owner = "erasin";
    repo = "hx-lsp";
    rev = "b0fab6d543962aaf2b7e544c901a096b7a03948d";
    sha256 = pkgs.lib.fakeHash;
    # sha256 = "sha256-UFsOUPvH0Yw8kebjE0UZrizXlxcANqAKRvbQVcwSebo=";
  };
  # cargoHash = "sha256-72QMr7ZR/bd9AqATd65Ou/ngH9zQJc043AxltRzPV1M=";
  cargoHash = pkgs.lib.fakeHash;
}

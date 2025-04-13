{pkgs ? import <nixpkgs> {}}:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "hx-lsp";
  version = "0.2.1";
  useFetchCargoVendor = true;
  src = pkgs.fetchFromGitHub {
    owner = "erasin";
    repo = "hx-lsp";
    rev = "8cb9e1674fe2ada832ad5280f656b4513378a364";
    # sha256 = pkgs.lib.fakeHash;
    sha256 = "sha256-UFsOUPvH0Yw8kebjE0UZrizXlxcANqAKRvbQVcwSebo=";
  };
  cargoHash = "sha256-72QMr7ZR/bd9AqATd65Ou/ngH9zQJc043AxltRzPV1M=";
  # cargoHash = pkgs.lib.fakeHash;
}

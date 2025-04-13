{pkgs ? import <nixpkgs> {}}:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "hx-lsp";
  version = "0.2.1";
  useFetchCargoVendor = true;
  src = pkgs.fetchFromGitHub {
    owner = "erasin";
    repo = "hx-lsp";
    # rev = "8cb9e1674fe2ada832ad5280f656b4513378a364";
    rev = "ec21fa1d688db7dfb7f0415238902d083d06358d";
    # sha256 = pkgs.lib.fakeHash;
    # sha256 = "sha256-UFsOUPvH0Yw8kebjE0UZrizXlxcANqAKRvbQVcwSebo=";
    sha256 = "sha256-rIQ0e2LZUmagcqpP+I62j54mxH2DTZm/p4n54HGGuxI=";
  };
  # cargoHash = "sha256-72QMr7ZR/bd9AqATd65Ou/ngH9zQJc043AxltRzPV1M=";
  cargoHash = "sha256-uePBJoKxxveo3JusiuF17Vu7Xxe7n1Wz6yq56gt/Ab8=";
  # cargoHash = pkgs.lib.fakeHash;
}

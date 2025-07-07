{pkgs ? import <nixpkgs> {}}:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "hx-lsp";
  version = "0.2.11";
  useFetchCargoVendor = true;
  src = pkgs.fetchFromGitHub {
    owner = "erasin";
    repo = "hx-lsp";
    rev = "b86dc789a473d941cb42e533e58a0bf247159395";
    # sha256 = pkgs.lib.fakeHash;
    sha256 = "sha256-wTilbEK3BZehklAd+3SS2tW/vc8WEeMPUsYdDVRC/Ho=";
  };
  # cargoHash = pkgs.lib.fakeHash;
  cargoHash = "sha256-dcGInrfWftClvzrxYZvrazm+IWWRfOZmxDJPKwu7GwM=";
}

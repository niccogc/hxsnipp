{pkgs ? import <nixpkgs> {}}:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "hx-lsp";
  version = "0.2.10";
  useFetchCargoVendor = true;
  src = pkgs.fetchFromGitHub {
    owner = "erasin";
    repo = "hx-lsp";
    rev = "72114c388707092b5ac1b96ef493634f5230870c";
    # sha256 = pkgs.lib.fakeHash;
    sha256 = "sha256-1+Uj3zC+IcLW9yFm/EvqcByjqPKHwQdiQS0BVLrfAps=";
  };
  cargoHash = "sha256-Tq9NsrxmQKvxD8ILXZ/nv/MQJ7Pmi0mSZUKGCH040vc=";
  # cargoHash = pkgs.lib.fakeHash;
}

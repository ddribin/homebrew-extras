class ScutigerLfs < Formula
  desc "Git LFS-specific utilities, namely git-lfs-transfer"
  homepage "https://github.com/bk2204/scutiger"
  url "https://crates.io/api/v1/crates/scutiger-lfs/0.3.0/download"
  sha256 "a58aa9a98281a798991f96aa90549abd0fd9d24d8bd2bff0b68d99092925fcbd"
  license "MIT"
  
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end

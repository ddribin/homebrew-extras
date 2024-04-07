class ScutigerLfs < Formula
  desc "Git LFS-specific utilities, namely git-lfs-transfer"
  homepage "https://github.com/bk2204/scutiger"
  url "https://crates.io/api/v1/crates/scutiger-lfs/0.3.0/download"
  sha256 "a58aa9a98281a798991f96aa90549abd0fd9d24d8bd2bff0b68d99092925fcbd"
  license "MIT"

  bottle do
    rebuild 1
    root_url "https://www.dribin.org/dave/resources/homebrew"
    sha256 cellar: :any_skip_relocation, sonoma: "c140c7c4bb09bf8cf1ecb70e026227c18f16f88a27b6c104b587135714da3da4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5c0090f71adfd1d65f8a2d4cb946b6fadfbc8e7e1f05aaaa66ac3f33dae5a811"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end

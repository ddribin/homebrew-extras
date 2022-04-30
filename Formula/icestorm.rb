class Icestorm < Formula
  desc "Tools for analyzing and creating Lattice iCE40 bitstream files"
  homepage "https://www.clifford.at/icestorm/"
  url "https://github.com/YosysHQ/icestorm/archive/9f66f9ce16941c6417813cb87653c735a78b53ae.tar.gz",
      verified: "github.com/YosysHQ/icestorm/"
  version "2022043001"
  sha256 "91975085e49dc7ad8e600ca471ec6e4691243be78631e5f576f305700b94d605"
  license "ISC"

  depends_on "libftdi0"
  depends_on "python@3.10"
  depends_on "yosys"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"icepack", "--help"
  end
end

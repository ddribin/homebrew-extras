class Icestorm < Formula
  desc "Tools for analyzing and creating Lattice iCE40 bitstream files"
  homepage "https://www.clifford.at/icestorm/"
  url "https://github.com/YosysHQ/icestorm/archive/45f5e5f3889afb07907bab439cf071478ee5a2a5.tar.gz",
      verified: "github.com/YosysHQ/icestorm/"
  version "2022122701"
  sha256 "c0e6aed765cf9915874d422f6aea2172878ff6b06fe95ab351de5d62fc9aa40b"
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

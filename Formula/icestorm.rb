class Icestorm < Formula
  desc "Tools for analyzing and creating Lattice iCE40 bitstream files"
  homepage "https://www.clifford.at/icestorm/"
  url "https://github.com/YosysHQ/icestorm.git",
    revision: "45f5e5f3889afb07907bab439cf071478ee5a2a5"
  version "2022122702"
  license "ISC"

  depends_on "libftdi0"
  depends_on "python@3.11"
  depends_on "yosys"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"icepack", "--help"
  end
end

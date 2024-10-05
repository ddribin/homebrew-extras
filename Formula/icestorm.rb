class Icestorm < Formula
  desc "Tools for analyzing and creating Lattice iCE40 bitstream files"
  homepage "https://www.clifford.at/icestorm/"
  url "https://github.com/YosysHQ/icestorm.git",
    revision: "738af822905fdcf0466e9dd784b9ae4b0b34987f"
  version "2024062401"
  license "ISC"

  depends_on "libftdi"
  depends_on "python@3.12"
  depends_on "yosys"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"icepack", "--help"
  end
end

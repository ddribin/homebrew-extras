class NextpnrIce40 < Formula
  desc "Portable FPGA place and route tool"
  homepage "https://github.com/YosysHQ/nextpnr/"
  url "https://github.com/YosysHQ/nextpnr/archive/refs/tags/nextpnr-0.6.tar.gz",
      verified: "github.com/YosysHQ/icestorm/"
  sha256 "76fa4bca48cc8462a8a3c28f89673439e7632a9baabc7bb121c58b75936d2d0b"
  license "ISC"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "eigen"
  depends_on "icestorm"
  depends_on "python@3.11"
  depends_on "yosys"

  def install
    system "cmake", "-S", ".", "-B", "build", "-DARCH=ice40",
      "-DICESTORM_INSTALL_PREFIX=#{HOMEBREW_PREFIX}", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    cd "ice40/examples/blinky"
    system "yosys", "-p", "'synth_ice40 -top blinky -json blinky.json'", "blinky.v"
    system "nextpnr-ice40", "--hx1k", "--json", "blinky.json", "--pcf", "blinky.pcf", "--asc", "blinky.asc"
    system "icepack", "blinky.asc", "blinky.bin"
  end
end

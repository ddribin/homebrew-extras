class NextpnrIce40 < Formula
  desc "Portable FPGA place and route tool for iCE40"
  homepage "https://github.com/YosysHQ/nextpnr/"
  url "https://github.com/YosysHQ/nextpnr/archive/refs/tags/nextpnr-0.7.tar.gz",
      verified: "github.com/YosysHQ/icestorm/"
  sha256 "bd173cb218c97f66e4afdf7b886d70c8c0893f544a1cf20b50c0182a1d9f2f45"
  license "ISC"

  depends_on "cmake" => :build
  depends_on "boost@1.85"
  depends_on "eigen"
  depends_on "icestorm"
  depends_on "python@3.12"
  depends_on "yosys"

  def install
    # Fix for boost 1.85.0:
    # https://github.com/YosysHQ/nextpnr/commit/f085950383155a745cf2e3c0f28c468d01ff5fd7
    inreplace %w[common/kernel/command.cc bba/main.cc],
      "boost/filesystem/convenience.hpp", "boost/filesystem/path.hpp"
    system "cmake", "-S", ".", "-B", "build", "-DARCH=ice40",
      "-DICESTORM_INSTALL_PREFIX=#{HOMEBREW_PREFIX}", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    cd "ice40/examples/blinky"
    system bin/"yosys", "-p", "'synth_ice40 -top blinky -json blinky.json'", "blinky.v"
    system bin/"nextpnr-ice40", "--hx1k", "--json", "blinky.json", "--pcf", "blinky.pcf", "--asc", "blinky.asc"
    system bin/"icepack", "blinky.asc", "blinky.bin"
  end
end

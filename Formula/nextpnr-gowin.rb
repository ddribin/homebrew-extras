class NextpnrGowin < Formula
  desc "Portable FPGA place and route tool for Gowin"
  homepage "https://github.com/YosysHQ/nextpnr/"
  url "https://github.com/YosysHQ/nextpnr/archive/refs/tags/nextpnr-0.7.tar.gz",
      verified: "github.com/YosysHQ/icestorm/"
  sha256 "bd173cb218c97f66e4afdf7b886d70c8c0893f544a1cf20b50c0182a1d9f2f45"
  license "ISC"

  depends_on "cmake" => :build
  depends_on "apycula"
  depends_on "boost@1.85"
  depends_on "eigen"
  depends_on "python@3.12"
  depends_on "yosys"

  def install
    # Fix for boost 1.85.0:
    # https://github.com/YosysHQ/nextpnr/commit/f085950383155a745cf2e3c0f28c468d01ff5fd7
    inreplace %w[common/kernel/command.cc bba/main.cc],
      "boost/filesystem/convenience.hpp", "boost/filesystem/path.hpp"
    system "cmake", "-S", ".", "-B", "build", "-DARCH=gowin", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "/usr/bin/true"
  end
end

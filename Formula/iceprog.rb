class Iceprog < Formula
  desc "Yoysys iceprog"
  homepage "https://github.com/YosysHQ/icestorm"
  url "https://github.com/YosysHQ/icestorm/archive/c495861c19bd0976c88d4964f912abe76f3901c3.tar.gz"
  version "2021030901"
  sha256 "ff20faff0e3db2b5f1fb714486c8a5a5e480042de74267fcf59c772ec0805f66"
  license "ISC"

  depends_on "libftdi0"

  def install
    cd "iceprog" do
      system "make", "install", "PREFIX=#{prefix}"
    end
  end

  test do
    system "true"
  end
end

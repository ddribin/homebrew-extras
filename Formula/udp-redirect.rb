class UdpRedirect < Formula
  desc "Simple yet flexible and very fast UDP redirector"
  homepage "https://github.com/danpodeanu/udp-redirect"
  url "https://github.com/danpodeanu/udp-redirect/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a3991738246addf15234fcf7bf127a509663430f904940ff5d5d928dd6697f2c"
  head "https://github.com/danpodeanu/udp-redirect.git", branch: "main"

  def install
    system "make"

    bin.install "udp-redirect"
    man1.install "udp-redirect.1"
  end

  test do
    system "#{bin}/udp-redirect", "--version"
  end
end

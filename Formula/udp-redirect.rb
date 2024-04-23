class UdpRedirect < Formula
  desc "Simple yet flexible and very fast UDP redirector"
  homepage "https://github.com/danpodeanu/udp-redirect"
  head "https://github.com/danpodeanu/udp-redirect.git", branch: "main"

  def install
    system "make"
    bin.install "udp-redirect"
  end
end

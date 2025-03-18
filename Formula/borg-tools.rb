class BorgTools < Formula
  desc "Dave Dribin's Borg tools"
  homepage "https://github.com/ddribin/borg-tools"
  url "https://github.com/ddribin/borg-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "18957072e8ad48ec9fa7447b011fcbb268f4f9f50604652153b13bcc93e3e02e"
  version_scheme 1
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end

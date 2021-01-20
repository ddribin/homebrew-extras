# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class BorgTools < Formula
  desc "Dave Dribin's Borg tools"
  homepage "https://github.com/ddribin/borg-tools"
  url "https://github.com/ddribin/borg-tools/archive/4e0e5ddb3028a105841c9b8bfa6d66f9d7aeb60c.tar.gz"
  version "202102001"
  sha256 "62d04c4e0123234472c6a3cc555d71edd7f8491bf11471ddc880f96f49e210cb"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
  end
end

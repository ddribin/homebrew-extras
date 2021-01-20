# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class ResticTools < Formula
  desc "Dave Dribin's Restic tools"
  homepage "https://github.com/ddribin/restic-tools"
  url "https://github.com/ddribin/restic-tools/archive/e6e824cd7cc8a57f33f5518c078d8e473178eb88.tar.gz"
  version "202102001"
  sha256 "3731006afedb98fae1b9f974b66c54150f53cf9f07954b2c79d6ba8b2282cd59"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end

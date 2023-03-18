class ResticTools < Formula
  desc "Dave Dribin's Restic tools"
  homepage "https://github.com/ddribin/restic-tools"
  url "https://github.com/ddribin/restic-tools/archive/be5e3fdd87d3048f2c9f6385829eaef87e63c83f.tar.gz"
  version "2023031701"
  sha256 "5501831cf264bd5b558551fcf1c92cbb0993f9d0ff38e1ebcaae9be2fc8b8260"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end

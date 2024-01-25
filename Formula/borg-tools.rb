class BorgTools < Formula
  desc "Dave Dribin's Borg tools"
  homepage "https://github.com/ddribin/borg-tools"
  url "https://github.com/ddribin/borg-tools.git",
    using:    :git,
    revision: "e8e2769e5f1d32ff026d6ee94c9bfb1748e8918e"
  version "2024011901"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end

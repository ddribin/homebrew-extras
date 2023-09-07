class BorgTools < Formula
  desc "Dave Dribin's Borg tools"
  homepage "https://github.com/ddribin/borg-tools"
  url "https://github.com/ddribin/borg-tools.git",
    using:    :git,
    revision: "9dba274ecd65f772940933b5a89bcb258a3c8300"
  version "2023031801"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end

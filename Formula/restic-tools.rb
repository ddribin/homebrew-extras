class ResticTools < Formula
  desc "Dave Dribin's Restic tools"
  homepage "https://github.com/ddribin/restic-tools"
  url "https://github.com/ddribin/restic-tools.git",
    using: :git,
    revision: "76a036fc4fb647436b24ea86c2927af3fbaeb6c3"
  version "2023031801"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "true"
  end
end

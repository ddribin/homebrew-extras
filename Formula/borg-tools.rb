# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class BorgTools < Formula
  desc "Dave Dribin's Borg tools"
  homepage "https://github.com/ddribin/borg-tools"
  url "https://github.com/ddribin/borg-tools/archive/4e0e5ddb3028a105841c9b8bfa6d66f9d7aeb60c.zip"
  version "202102001"
  sha256 "a03ccc886b365481b57774a3c9b4541d7c084b549c2b34e23afb0776c1fb4fe1"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test borg-tools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end

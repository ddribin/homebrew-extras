# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class ResticTools < Formula
  desc "Dave Dribin's Restic tools"
  homepage "https://github.com/ddribin/restic-tools"
  url "https://github.com/ddribin/restic-tools/archive/e6e824cd7cc8a57f33f5518c078d8e473178eb88.zip"
  version "202102001"
  sha256 "5ef8229933533f46bbf1c1bfb51effc09281d5e98e9a1e9d7bf3fc8233a18cc1"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test restic-tools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

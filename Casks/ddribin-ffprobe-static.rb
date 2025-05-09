cask "ddribin-ffprobe-static" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "7.1.1"
    sha256 "e695da37c08c8fbc218ebc161ee20d5606b50f3c7e8d696cbcf01bd40fe20d7e"
  end
  on_intel do
    version "7.1"
    sha256 "dc42e20dbb7fa5c334dd2bd822a6f90e4c838b4fa74f14523589e6ce8361c7c4"
  end

  url "https://www.osxexperts.net/ffprobe#{version.delete(".")}#{arch}.zip"
  name "ffprobe (static build)"
  desc "Static build of ffprobe binary from OSXExperts.net"
  homepage "https://www.osxexperts.net/"

  conflicts_with formula: "ffmpeg"

  binary "ffprobe"
end

cask "ddribin-ffprobe-static" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "6.1.1"
    sha256 "8ec78ce09c0b474ae7583908c8d79d801f754d8273dca3d5a5de51f307517fc7"
  end
  on_intel do
    version "6.1"
    sha256 "977381d8cec9c477fef4cdbb259addc7e5506e47fa61087e620d5ed01a7c7a51"
  end

  url "https://www.osxexperts.net/ffprobe#{version.delete(".")}#{arch}.zip"
  name "ffprobe (static build)"
  desc "Static build of ffprobe binary from OSXExperts.net"
  homepage "https://www.osxexperts.net/"

  conflicts_with formula: "ffmpeg"

  binary "ffprobe"
end

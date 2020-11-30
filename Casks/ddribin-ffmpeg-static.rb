cask "ddribin-ffmpeg-static" do
  version "4.3.1"
  sha256 "8f3e9fca63a76d9f69bc60daf5aa8b524178de0e425452a2ecd872a9fd2eb9f6"

  url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.zip"
  name "ffmpeg (static build)"
  desc "Static build of ffmpeg binary from FFmpeg"
  homepage "https://evermeet.cx/ffmpeg/"

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"
end

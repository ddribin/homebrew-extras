cask "ddribin-ffprobe-static" do
  version "4.3.1"
  sha256 "7a028fff382a722b39a0fd46d75e9caf8a49889aacc29e52f79274d204155869"

  url "https://evermeet.cx/ffmpeg/ffprobe-#{version}.zip"
  name "ffprobe (static build)"
  desc "Static build of ffprobe binary from FFmpeg"
  homepage "https://evermeet.cx/ffmpeg/"

  conflicts_with formula: "ffmpeg"

  binary "ffprobe"
end

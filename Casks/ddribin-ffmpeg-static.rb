cask "ddribin-ffmpeg-static" do
  version "4.3"
  sha256 "3149dd7211b64ea4db96c730126885d8eb1f443095e6a5520b4a9c606aaa029d"

  url "https://ffmpeg.zeranoe.com/builds/macos64/static/ffmpeg-#{version}-macos64-static.zip"
  name "FFmpeg (static build)"
  homepage "https://ffmpeg.zeranoe.com/builds/"

  conflicts_with :formula => "ffmpeg"

  binary "ffmpeg-#{version}-macos64-static/bin/ffmpeg"
  binary "ffmpeg-#{version}-macos64-static/bin/ffprobe"
  binary "ffmpeg-#{version}-macos64-static/bin/ffplay"
end

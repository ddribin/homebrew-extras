cask "ddribin-ffmpeg-static" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "7.1.1"
    sha256 "59e39a5cec2e5d2307ed079c53227a9181e64b87454ed4de998349e044bfdc70"
  end
  on_intel do
    version "7.1"
    sha256 "356b39a61de48eadb57a3f84f53d3261ab9847c788d88537511a475a7137a1e6"
  end

  url "https://www.osxexperts.net/ffmpeg#{version.delete(".")}#{arch}.zip"
  name "ffmpeg (static build)"
  desc "Static build of ffmpeg binary from OSXExperts.net"
  homepage "https://www.osxexperts.net/"

  binary "ffmpeg"
end

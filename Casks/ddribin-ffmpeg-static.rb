cask "ddribin-ffmpeg-static" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "8.0"
    sha256 "0d4efcaf6a098430a708e0af694a84792938921fa126162787ae98c6151d7a95"
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

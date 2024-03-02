cask "ddribin-ffmpeg-static" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "6.1.1"
    sha256 "1c69a9a4a5d0172d9aec611f19d282b38b3c3d69832621ecef87926335f62e0a"
  end
  on_intel do
    version "6.1"
    sha256 "9a7de6ea24052166340c50e00dd493da49315431e6bfde5ed2a600eab9f27b65"
  end

  url "https://www.osxexperts.net/ffmpeg#{version.delete(".")}#{arch}.zip"
  name "ffmpeg (static build)"
  desc "Static build of ffmpeg binary from OSXExperts.net"
  homepage "https://www.osxexperts.net/"

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"
end

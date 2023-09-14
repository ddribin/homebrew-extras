cask "ddribin-ffmpeg-static" do
  arch arm: "arm", intel: "intel"

  version "6.0"
  sha256 arm:   "15e67ff413d3d2436ddb3efd282344e50b8f1c6f834979b984371b90ebaf0449",
         intel: "034a8d6eafb2736711d98e897dc22cc5769c7c31bde9a40ac20f58cbd57f68d8"

  url "https://www.osxexperts.net/ffmpeg#{version.major}#{arch}.zip"
  name "ffmpeg (static build)"
  desc "Static build of ffmpeg binary from OSXExperts.net"
  homepage "https://www.osxexperts.net/"

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"
end

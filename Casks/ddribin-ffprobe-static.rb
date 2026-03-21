cask "ddribin-ffprobe-static" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "8.0"
    sha256 "b46eb342707ec0d31d3e8337bb56831e59c9e20918f414fd7a9d65a32fcb348f"
  end
  on_intel do
    version "7.1"
    sha256 "dc42e20dbb7fa5c334dd2bd822a6f90e4c838b4fa74f14523589e6ce8361c7c4"
  end

  url "https://www.osxexperts.net/ffprobe#{version.delete(".")}#{arch}.zip"
  name "ffprobe (static build)"
  desc "Static build of ffprobe binary from OSXExperts.net"
  homepage "https://www.osxexperts.net/"

  binary "ffprobe"
end

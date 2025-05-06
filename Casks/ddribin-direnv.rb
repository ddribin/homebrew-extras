cask "ddribin-direnv" do
  version "2.35.0"
  sha256 "edf7087c1a123f5a77424865a17139fbf776a3a25a2184da7c2fca227ad7a704"

  url "https://github.com/direnv/direnv/releases/download/v#{version}/direnv.darwin-arm64"
  name "direnv"
  desc "an extension for your shell."
  homepage "https://direnv.net"

  conflicts_with formula: "direnv"

  binary "direnv.darwin-arm64", target: "direnv"
end

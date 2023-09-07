cask "ddribin-fceux" do
  version "2.6.5"
  sha256 "f85471ced92016f835f9f0a8a7d8ea63e312946dc971b79905affbe83e4bba0b"

  url "https://github.com/TASEmulators/fceux/releases/download/v#{version}/fceux-#{version}-Darwin.dmg",
    verified: "github.com/TASEmulators/fceux"
  name "FCEUX binary"
  desc "Official FCEUX binary"
  homepage "https://fceux.com/web/home.html"

  conflicts_with formula: "fceux"

  app "fceux.app"
end

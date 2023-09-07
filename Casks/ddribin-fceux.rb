cask "ddribin-fceux" do
  version "2.6.4"
  sha256 "104b61e17cbb16d345aa2df625ac14f8a7d947d768cbe6ae6150c36a7be454bd"

  url "http://sourceforge.net/fceultra/fceux-#{version}-Darwin.dmg"
  name "FCEUX binary"
  desc "Official FCEUX binary"
  homepage "https://fceux.com/web/home.html"

  conflicts_with formula: "fceux"

  app "fceux.app"
end

cask "esphome-flasher" do
  version "1.4.0"
  sha256 "97204d6b11ce5863a19ea3f424cb82c27d0dc199ffdc32cc9dba93b159605679"

  url "https://github.com/esphome/esphome-flasher/releases/download/#{version}/ESPHome-Flasher-#{version}-macOS.tar"
  name "ESPHome-Flasher"
  desc "Simple GUI tool to flash ESPs over USB"
  homepage "https://github.com/esphome/esphome-flasher"

  app "ESPHome-Flasher.app"
end

cask "borgbackup-binary" do
  version "1.2.8"
  sha256 "f45a9424f4bac54322d07bd0e98f82598a1d983339d31da60195238f285ce4e3"

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macos64",
      verified: "github.com/borgbackup/borg/"
  name "Borg backup binary"
  desc "Official prebuilt binary of Borg backup"
  homepage "https://www.borgbackup.org/"

  conflicts_with formula: "borgbackup"

  binary "borg-macos64", target: "borg"
end

cask "borgbackup-binary" do
  version "1.2.3"
  sha256 "04bb4aeef4756641cb0cd354380b71a82a58c1fa9740afe290e34b1d9e6db958"

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macos64",
      verified: "github.com/borgbackup/borg/"
  name "Borg backup binary"
  desc "Official prebuilt binary of Borg backup"
  homepage "https://www.borgbackup.org/"

  conflicts_with formula: "borgbackup"

  binary "borg-macos64", target: "borg"
end

cask "borgbackup-binary" do
  version "1.1.15"
  sha256 "c28cd2e2bf8eb4f00cc058ee9e45844b547f3ee7b40e898fa452f2a41288eb02"

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64"
  name "Borg backup binary"
  desc "Official prebuilt binary of Borg backup"
  homepage "https://www.borgbackup.org/"

  conflicts_with formula: "borgbackup"

  binary "borg-macosx64", target: "borg"
end

cask "borgbackup-binary" do
  version "1.2.2"
  sha256 "b045de49d99a69ba7de1ff786db335de1e71861feab4f529186d26db2d7ea4f5"

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macos64",
      verified: "github.com/borgbackup/borg/"
  name "Borg backup binary"
  desc "Official prebuilt binary of Borg backup"
  homepage "https://www.borgbackup.org/"

  conflicts_with formula: "borgbackup"

  binary "borg-macos64", target: "borg"
end

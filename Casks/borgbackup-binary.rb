cask "borgbackup-binary" do
  version "1.2.7"
  sha256 "fcb14233dce72b98e0fa90307d544715f6137201137b22908b8cf07a775c97eb"

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macos64",
      verified: "github.com/borgbackup/borg/"
  name "Borg backup binary"
  desc "Official prebuilt binary of Borg backup"
  homepage "https://www.borgbackup.org/"

  conflicts_with formula: "borgbackup"

  binary "borg-macos64", target: "borg"
end

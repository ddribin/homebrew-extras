cask "borgbackup-binary" do
  version "1.1.17"
  sha256 "289b60b29d9b17531491ebcc203ca8082e74c5d4028dddca2c17522eda9fe2f2"

  url "https://github.com/borgbackup/borg/releases/download/#{version}/borg-macosx64",
    verified: "github.com/borgbackup/borg"
  name "Borg backup binary"
  desc "Official prebuilt binary of Borg backup"
  homepage "https://www.borgbackup.org/"

  conflicts_with formula: "borgbackup"

  binary "borg-macosx64", target: "borg"
end

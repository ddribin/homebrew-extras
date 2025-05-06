cask "ddribin-xld-log-checker" do
  version "20201230"
  sha256 "6e0d44cb7a214ec103edae103b4e68416008b103b14d37374478f4c4101602c0"

  url "https://sourceforge.net/projects/xld/files/XLDLogChecker-#{version}.zip/download",
    verified: "sourceforge.net/xld/"  
  name "X Lossless Decoder Log Checker"
  name "XLDLogChecker"
  desc "Log checker plugin for XLD"
  homepage "https://tmkk.undo.jp/xld/index_e.html"

  artifact "XLDLogChecker.bundle",
    target: "~/Library/Application Support/XLD/PlugIns/XLDLogChecker.bundle"
end

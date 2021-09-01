cask "famistudio" do
  version "3.1.1"
  sha256 "b30e514cf75ff9f76ceee1eb99cf6ca0c7552684ff70940434cbd9f2ac1b032d"

  url "https://github.com/BleuBleu/FamiStudio/releases/download/#{version}/FamiStudio311-MacOS.zip"
  name "FamiStudio"
  desc "FamiStudio is very simple music editor for the Nintendo Entertainment System or Famicom."
  homepage "https://famistudio.org"

  depends_on cask: "mono-mdk"

  app "FamiStudio.app"
end

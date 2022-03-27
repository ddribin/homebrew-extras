cask "famistudio" do
  version "3.2.3"
  sha256 "716e8aa531d61dfbc7a11eca8cbd61aa359dfa9e079b3522f7dd664629effa33"

  url "https://github.com/BleuBleu/FamiStudio/releases/download/#{version}/FamiStudio#{version.no_dividers}-MacOS.zip",
      verified: "github.com/BleuBleu/FamiStudio/"
  name "FamiStudio"
  desc "Simple music editor for the Nintendo Entertainment System or Famicom"
  homepage "https://famistudio.org/"

  depends_on cask: "mono-mdk"

  app "FamiStudio.app"
end

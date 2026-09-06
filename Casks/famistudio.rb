cask "famistudio" do
  version "4.5.0"
  sha256 "e34295a6a80d2ff6dc58f86efa0504509cf6389c87a6a4da15aa67a5ae12a5f4"

  url "https://github.com/BleuBleu/FamiStudio/releases/download/#{version}/FamiStudio#{version.no_dividers}-MacOS.zip"
  name "FamiStudio"
  desc "Simple music editor for the Nintendo Entertainment System or Famicom"
  homepage "https://famistudio.org/"

  depends_on cask: "dotnet-runtime@8"

  app "FamiStudio.app"
end

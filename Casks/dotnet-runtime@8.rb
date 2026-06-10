cask "dotnet-runtime@8" do
  version "8.0.26"
  sha256 "6b09cc868adea36e7b63d0a2c76fb650b3bc4f711281ca66d6275a1272f6bffb"

  url "https://builds.dotnet.microsoft.com/dotnet/Runtime/#{version}/dotnet-runtime-#{version}-osx-arm64.pkg"
  name ".NET Runtime 8"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        version = release.dig("runtime", "version")
        next unless version&.match(regex)

        version
      end
    end
  end

  conflicts_with cask: [
    "dotnet-runtime",
    "dotnet-runtime@preview",
    "dotnet-sdk",
    "dotnet-sdk@preview",
  ]
  depends_on arch: :arm64
  depends_on macos: :big_sur

  pkg "dotnet-runtime-#{version}-osx-arm64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end

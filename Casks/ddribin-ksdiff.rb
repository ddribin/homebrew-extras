cask "ddribin-ksdiff" do
  version "2.4.2,126,sep-7-2021"
  sha256 "11a4e09eab56fed96cb1e1fb5fbec350a726ee8dd07a7d0d1d992dd4e44b6d68"

  url "https://updates.kaleidoscope.app/v2/prod/ksdiff-#{version.csv.first}-#{version.csv.second}-#{version.csv.third}.zip"
  name "ksdiff"
  desc "Command-line tool for the App Store version of Kaleidoscope"
  homepage "https://kaleidoscope.app/ksdiff2"

  livecheck do
    url "https://kaleidoscope.app/download/latest/ksdiff"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/ksdiff-(\d+(?:\.\d+)*)-(\d+)-(\w+(?:-\d+)*)\.zip}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  conflicts_with cask: ["kaleidoscope", "ksdiff"]

  pkg "ksdiff-#{version.csv.first}/Install ksdiff.pkg"

  uninstall pkgutil: "com.blackpixel.kaleidoscope.ksdiff.installer.pkg"

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end

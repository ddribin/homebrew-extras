class FluidSoundfont < Formula
  desc "Fluild Soundfont"
  homepage "https://github.com/ddribin/fluid-soundfont"
  url "https://github.com/ddribin/fluid-soundfont/releases/download/v3.1/fluid-soundfont_3.1.orig.tar.gz"
  sha256 "2621acaa1c78e4abdb24bdd163230cc577e61276936d6aa6e3180582142f0343"

  def install
    mkdir_p "#{share}/sounds/sf2"
    share.install "FluidR3_GM.sf2" => "sounds/sf2"
    share.install "FluidR3_GS.sf2" => "sounds/sf2"
  end
end

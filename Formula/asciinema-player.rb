class AsciinemaPlayer < Formula
  desc "Web player for terminal sessions recorded with asciinema"
  homepage "https://github.com/asciinema/asciinema-player"
  url "https://github.com/asciinema/asciinema-player/releases/download/v3.6.3/asciinema-player.min.js"
  sha256 "f20f326fcc178e20412af6ab3f0bbbbafba428dc07c65bc86cc08d18e1ac7a95"
  license "Apache-2.0"

  resource "css" do
    url "https://github.com/asciinema/asciinema-player/releases/download/v3.6.3/asciinema-player.css"
    sha256 "18c221bb91e76f6caf136029dbd10f0539dcad1e39ad957874527aed5637ee86"
  end

  def install
    pkgshare.install "asciinema-player.min.js"
    resource("css").stage { pkgshare.install "asciinema-player.css" }
  end
end

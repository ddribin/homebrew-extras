class AsciinemaPlayer < Formula
  desc "Web player for terminal sessions recorded with asciinema"
  homepage "https://github.com/asciinema/asciinema-player"
  url "https://github.com/asciinema/asciinema-player/releases/download/v3.7.0/asciinema-player.min.js"
  sha256 "626728ffe1629c3af960ead5ef67a1725a69e1a9ab7338e8e445378dfaffcf1b"
  license "Apache-2.0"

  resource "css" do
    url "https://github.com/asciinema/asciinema-player/releases/download/v3.7.0/asciinema-player.css"
    sha256 "19931e645146bcfe4632aaa1e75ea68c929f41a889e9b2f7f1b49839791aa217"
  end

  def install
    pkgshare.install "asciinema-player.min.js"
    resource("css").stage { pkgshare.install "asciinema-player.css" }
  end
end

class AsciinemaPlayer < Formula
  desc "Web player for terminal sessions recorded with asciinema"
  homepage "https://github.com/asciinema/asciinema-player"
  url "https://github.com/asciinema/asciinema-player/releases/download/v3.2.0/asciinema-player.min.js"
  sha256 "3763f96b891734d121f69e919b71de2e4e475ed57153ec4b182dad1ea4264b88"
  license "Apache-2.0"

  resource "css" do
    url "https://github.com/asciinema/asciinema-player/releases/download/v3.2.0/asciinema-player.css"
    sha256 "c7ccca2bb4936995f0a60b46860ff7f06be7c89e4b9be3e18fa12c85bb3d5abf"
  end

  def install
    pkgshare.install "asciinema-player.min.js"
    resource("css").stage { pkgshare.install "asciinema-player.css" }
  end
end

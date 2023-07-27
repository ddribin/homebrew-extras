class AsciinemaPlayer < Formula
  desc "Web player for terminal sessions recorded with asciinema"
  homepage "https://github.com/asciinema/asciinema-player"
  url "https://github.com/asciinema/asciinema-player/releases/download/v3.5.0/asciinema-player.min.js"
  sha256 "13ce28231b851b9b83cbe76f80265290ce82f9d81d2c9c24eb0b486bbdc77bfe"
  license "Apache-2.0"

  resource "css" do
    url "https://github.com/asciinema/asciinema-player/releases/download/v3.5.0/asciinema-player.css"
    sha256 "3e2d94f8ed4f1ec1608c5fe25de5a07a4f16a5709f7e0eb1864cf48b9ff7e1f5"
  end

  def install
    pkgshare.install "asciinema-player.min.js"
    resource("css").stage { pkgshare.install "asciinema-player.css" }
  end
end

class Apycula < Formula
  include Language::Python::Virtualenv

  desc "Open source tools for the Gowin FPGA bitstream format"
  homepage "https://github.com/YosysHQ/apicula"

  depends_on "python@3.11"
  
  url "https://files.pythonhosted.org/packages/21/0f/b15f184f8345be5b85df92b5efb0ef690c3b34b4b656d38764ad49c6d6a7/Apycula-0.8.1.tar.gz"
  sha256 "2339ceb7af60cd63bff929f0f587e60d4d82135e4867e8e53f3f9919f3f32be4"

  resource "crcmod" do
    url "https://files.pythonhosted.org/packages/6b/b0/e595ce2a2527e169c3bcd6c33d2473c1918e0b7f6826a043ca1245dd4e5b/crcmod-1.7.tar.gz"
    sha256 "dc7051a0db5f2bd48665a990d3ec1cc305a466a77358ca4492826f41f283601e"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/cf/7a/f68d1d658a0e68084097beb212fa9356fee7eabff8b57231cc4acb555b12/numpy-1.25.1.tar.gz"
    sha256 "9a3a9f3a61480cc086117b426a8bd86869c213fc4072e606f01c4e4b66eb92bf"
  end

  def install
    virtualenv_install_with_resources
  end
end

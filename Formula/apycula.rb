class Apycula < Formula
  include Language::Python::Virtualenv

  desc "Open source tools for the Gowin FPGA bitstream format"
  homepage "https://github.com/YosysHQ/apicula"

  url "https://files.pythonhosted.org/packages/a0/e0/e447cb2fc8506ab0a0a72c8355f5289ca369fa5ccbcc85d6d1af80c80eb9/Apycula-0.14.tar.gz"
  sha256 "b2e9ea0967d7cfdd67a9b25719e8afa370e840e560700f20acee63ddab6b2dba"

  depends_on "python@3.12"

  resource "crc" do
    url "https://files.pythonhosted.org/packages/54/39/7e3c6f9af03f0012d4f8ecdf29689fed1f27d57d0f965bf051da4905fa78/crc-7.0.0.tar.gz"
    sha256 "b9fc521042167f2b59d9183ce27acc0897e4a17748421e8b304ccdf7ebf4280a"
  end

  def install
    virtualenv_install_with_resources
  end
end

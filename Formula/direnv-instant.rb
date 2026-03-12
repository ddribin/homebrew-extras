class DirenvInstant < Formula
  desc "Non-blocking daemon that runs direnv asynchronously for instant prompts"
  homepage "https://github.com/Mic92/direnv-instant"
  url "https://github.com/Mic92/direnv-instant/archive/refs/tags/1.1.0.tar.gz"
  sha256 "f1a1a0d61b98ec74f28e05c7c8badb82d93cf2f49e1ebec04b2e7bc204fc1c93"
  license "MIT"

  depends_on "rust" => :build
  depends_on "direnv"

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      To activate direnv-instant, remove any existing direnv hooks from your
      shell config and add:

        eval "$(direnv-instant hook zsh)"
    EOS
  end

  test do
    assert_match "direnv-instant", shell_output("#{bin}/direnv-instant --help 2>&1", 2)
  end
end

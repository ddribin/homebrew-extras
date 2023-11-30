cask "llvm-mos" do
  version "8.0.1"
  sha256 "e8932a1d3cb586f0ce2b7e9982bb8de3ebddfc72f7669422ed0739bd65825843"

  url "https://github.com/llvm-mos/llvm-mos-sdk/releases/download/v#{version}/llvm-mos-macos.tar.xz",
      verified: "github.com/llvm-mos/llvm-mos-sdk"
  name "LLVM-MOS"
  desc "Compiler toolchain and platform libraries for 6502 targets"
  homepage "https://www.llvm-mos.org/"

  artifact "llvm-mos", target: "#{HOMEBREW_PREFIX}/llvm-mos"

  caveats <<~EOS
    LLVM-MOS will be installed to #{HOMEBREW_PREFIX}/llbm-mos.

    WARNING: Don't install LLVM-MOS into your path if you already have
    LLVM/Clang installed. LLVM-MOS conflicts with other LLVM/Clang
    installations.

    However, if you would like to add it to your path, for bash shell, add
    these lines to ~/.bash_profile:

      export PATH=$PATH:#{HOMEBREW_PREFIX}/llbm-mos/bin

    You may need to reinstall LLVM-MOS with "--no-quarantine", otherwise
    Gatekeeper will prevent the binaries from running.
  EOS
end

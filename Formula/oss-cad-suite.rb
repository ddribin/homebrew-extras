class OssCadSuite < Formula
  desc "Pre-built icestorm and nextpnr tools from the OSS CAD Suite"
  homepage "https://github.com/YosysHQ/oss-cad-suite-build"
  version "2026-04-12-01"
  license "ISC"

  on_macos do
    v       = version.to_s.sub(/-\d+$/, "") # "2026-04-12" (strip revision suffix)
    compact = v.delete("-")                 # "20260412"
    base    = "https://github.com/YosysHQ/oss-cad-suite-build/releases/download/#{v}/oss-cad-suite"

    on_arm do
      url "#{base}-darwin-arm64-#{compact}.tgz"
      sha256 "c7f6870bd1190f291fbae09a3013be74bf97fd2ded3a94221d2b413e9865eb88"
    end
    on_intel do
      url "#{base}-darwin-x64-#{compact}.tgz"
      sha256 "13bad04fffd07e618d690baa56b7bdf80513923feeb4b53794142dd13892d295"
    end
  end

  conflicts_with "icestorm", because: "both install icestorm tools"
  conflicts_with "nextpnr-ice40", because: "both install nextpnr-ice40"

  def install
    # Install the full suite into libexec so OSS CAD Suite's internal
    # relative paths (lib/, libexec/, etc.) remain intact.
    libexec.install Dir["*"]

    # Only expose a curated subset of tools to avoid conflicting with
    # Homebrew-managed formulae (yosys, icarus-verilog, etc.).
    # The full suite is still available under libexec/bin/.
    expose = [
      /\Aice/,        # icestorm tools: icebox_*, icebram, icepack, iceprog, …
      /\Anextpnr-/,   # nextpnr-ice40, nextpnr-ecp5, nextpnr-gowin, …
    ]

    Dir["#{libexec}/bin/*"].each do |tool|
      name = File.basename(tool)
      next if name.end_with?(".dylib")
      next unless expose.any? { |pat| pat.match?(name) }

      # OSS CAD Suite's bin/ entries are wrapper scripts that use $0 to locate
      # siblings. Symlinking breaks that lookup, so generate a small real
      # script that execs the wrapper via its absolute path.
      (bin/name).write <<~SH
        #!/bin/sh
        exec "#{tool}" "$@"
      SH
      (bin/name).chmod 0755
    end
  end

  def caveats
    <<~EOS
      The full OSS CAD Suite environment (Python paths, etc.) lives in:
        #{libexec}

      The binaries are symlinked into your PATH, which is enough for most
      workflows. If a tool needs the full environment (e.g. Python-based
      scripts), add this to your shell profile:
        source #{libexec}/environment
    EOS
  end

  test do
    assert_match "nextpnr", shell_output("#{bin}/nextpnr-ice40 --version 2>&1")
    assert_match "iceprog", shell_output("#{bin}/iceprog -h 2>&1")
  end
end

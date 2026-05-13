class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.21.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "c41fbd558156b22c7ae4f44e9abe4d40bdb1f6cca12e2cac44f3509a3cfef233"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "f39a90c34f7f0c592dd2dfcd06ac3fbf59badd331c42a6494b02f80043547a4b"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "44a64c6831a3969073bcbeef9bb788b436f494fc707781dc89e0e2249394e581"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "2ff3c1d05ffcccfb4e88c6a6a6ab8c95405ee418e052af6d4e2358f322327784"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

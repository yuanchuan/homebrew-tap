class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "267d4a03d606fd41683078438c675fd0ae6e6f1e59816cbdb23b2316ad9e56f0"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c74bbc3e4e61c5a068f133859a3a49c2edbec1d32e8a37d4e5ee1f707f85cf1e"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "8c5332c026e6729379a707a88934d821b773dfeebea1d20ec02ce65d3e616852"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "5e976d0cee90a6d42a061d0806d5e8b79576464f8584b9af6ca5cc380e04b123"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

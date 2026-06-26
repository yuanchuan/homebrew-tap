class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.32.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "fbfadb43958e057413bc56c5664cc09fa22de08d12cfb5958e442dfa1c43c9b5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "5782f7dd71e9a8042a2f96885dc1113172b02ac1c966f8b9a22d6f9b6d812842"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "c0bceda56a45c75c307a4b7a3de55f2a3940f83af2209390951b28add1638047"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "89d4ca9f55e7118e94de13db665d3766df5f50e9ffda0b142b6371f6292e25eb"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

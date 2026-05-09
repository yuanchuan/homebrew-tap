class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "63d9775bd5c38e74e0d8a973da4bd2abbf47b987c9466c3e4a477a19b2fb2422"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "0daa3cff2eeca716c33bf556ddf3a1d210525da1b4df1e105b159b2cb079effb"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "0e00f38f49d7921943502b0d04b6dda3cb40e1640e720295a14e25d01f1caa1f"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "f80c7f4f3683858039c467ca847c44bcc95468e1f4ba119a405581ff49bd75d6"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

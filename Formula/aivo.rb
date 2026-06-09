class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "9617c1b4d8237e9aa21f8d46cc48ce7da65b35cd32ee8203df3a4cb10e319deb"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "aabc066509697c6ace6aa8bc65322af9628155ba60dc9d83cc7e55e0d7878053"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "31eadc3f1ededed78538e48b9b2336f3b5fef167ebd69dfd9b4e3a4b9f37d2e5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "dd3801482a9aba534bf8bc28b76146e7948ad44edcf15b11316d0d93650f8cfe"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

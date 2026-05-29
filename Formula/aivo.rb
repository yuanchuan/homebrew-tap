class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.23.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "bed7c9ffca804652d6ccababae8d2543c1392283b806a4ce2e63c9db6e7e6641"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "8e55160de78855416791a6c0f242f2ebe8786a208008c9cc322e1b653f35b06c"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "fa1fb92027ea47434a8283156547f3e1a55b39ab99d7513c5d5d508be74d8d91"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "bbc0894c7779a2b4faedfe8e3531f6feb0f62510a3a00676c80b49a48f7880f6"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

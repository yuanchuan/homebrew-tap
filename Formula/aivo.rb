class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.33.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "4105ddd7d11f6e98c197913eff64f2cbbd9745372b04fb3edb4b2a816d776b29"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "9800cf9f72059b9c4e886b54438ba92b41ce4431646c33687f2ca84c7225f5ae"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "ece6ef5adb0dac991048fab3ad419fddd0a9ad2f11d742812d18e6739ce2eac5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "22bd6500a0f296e14a5b0fafc910373ebc1d7de3875f6d647acd0a366720570f"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

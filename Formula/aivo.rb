class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "de8b16381bfca5dcd070cad4dea06f3195bbc671e2ff9b6bcb49bdd20cf9c6cd"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "d1f17ab6368d189aefd29022f3a75752d68e924909864caa60efeb6def150ab6"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "41aa177fedfaacb7d9720cdd276764c996624c05fa9d850068792be995028f9b"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "64e0c3a823019c0497157e0f755b8a2241aefd4eafadf9f0f29e327172ffb0a1"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "c11b195196a37bd8915eace6a73d266fe0352fbbe08703def7eb47a46be329c8"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "5cb6ea47bda5de4135e266543da5f236bcab489df4b0a483a40cebbaf97cd420"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "6a807c82278af48730f319f51534bf00f516dc4b00f663298839109e96e1b6a5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "6d40b61904d58a2eb6df6e0aaaf0282f0892ee6a16ee507cdec00146d80fcaa5"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

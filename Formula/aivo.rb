class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "02410d855e0105f8530294444d024e367e3a4ef75f330c8fc345540d671dbedb"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "9a1a2fbbf6dc7ae2cd959362243934db1f8713fdc44caee9637548aa1fc785c6"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "181b911ef2eb1d3b6fd72507e6bf9494f5df87f4e0d301ac9ead4ec01dd27a79"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "a29c2ea882ed6ab4184b6819309a455ec7a5de64fe838806e399c0009a51f309"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

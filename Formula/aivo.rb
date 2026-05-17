class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.21.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "8de716f63f06c13b444d3ff8df7f781fa81912c3bcfc4cd164c8abf38bc9897a"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "d57e1da1611b02a10aa3d4e06b26fca53c5da1222a31ce77d60430f7223f969c"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "20fcab983291dbe0897c9af8a09fea1820a4260a382620a1a656b2082a2bb4a9"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "61fa99c4fe137fa4e4654e44a57ad8a5566fb4df69a8a5e6dae0487ee95d0306"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

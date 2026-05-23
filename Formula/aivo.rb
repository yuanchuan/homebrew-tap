class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "9b151119e68a40a98eadfd75877ab3fb0ded73e85ea2e41d71b762a214d2b5a1"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "beafc716c0be5b22acb2c15a2d8bdb565202ee5b871ea23aa69f308b28f08e99"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "f297fafbb39a61b33942e8b564f4656309c7c60935b157d30b82041157dd73b2"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "eab55876968fcff30bee5ebc540d8fd9edd3af4604b4b84dcb758127a408b489"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

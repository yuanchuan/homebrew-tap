class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "81b79c650acb8c30f3dd494c6ca5c919614903c9d1ba349ec7fb5deb7592ca51"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "daf8bf91ca5d305d2a24098a4f42c4a2d59bec326f91f896eb330876a383a66f"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "b7e793b7f261a506ba265d0ae4cbdf03ea0eb3deae04edafdc2cc1bb2364e63b"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "7918d40da4ebdf5e53c8ef824633908353bbb2ff9e7ca9dff2aa44e37fd8c349"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

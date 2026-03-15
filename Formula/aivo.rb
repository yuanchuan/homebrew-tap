class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "dca05d2bc3e5eae458560e820fcda3663dbd88e8f715a3ee251c6cc20d033130"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "e3a1f520337dc222bec000ff76721a27182485ed35955cd6638f67c2ef7b27b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "6c07fcb31b16aee77cf2d2e1753b3c9c901a582a692751472d40f442682ab208"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "fd809eed32ee013c14111cb333f3d7c99ee3d2c4c6b4ffed557608b3af883dea"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

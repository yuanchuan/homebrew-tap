class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "056a324a749a1bf60af1d6bb1ddabfbb3decba2894c1deda979599238bcc88f2"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "94f90d0c598e90b46a99c730ca88bcb69788f0d02c1fce7244a211df5f42c836"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "8963eeb1b4b92e8819efe0329fec811b2b3793d26990fa298ae699de4198a0d4"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "8e4a366ee8b26c6b9f854ed7c376fb01867ede27aeda0f2e0bc5883172a859ea"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

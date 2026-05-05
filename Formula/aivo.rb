class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "f4718bc2aeff353a0316b9c7c058f776f31577b3efef297da7e7ae9c5ad234bf"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "f14492ec02100d5e35d8f5ce419bb79894c5ddb00c5ba0aa538b4f7d41f6b821"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "6b9d218daa7cc66faa93312f512d1a6fb71b994ecb0c9d36040c39e407a62e5d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b8b843d297d20b5445e5063361412e0568012f02ea48ee2da71d4a85d84d6e77"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

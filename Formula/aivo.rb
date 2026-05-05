class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "883fe37593ed78eceefe7ed189bb0bede8d266f416d06ac72c47000d6f544a5e"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "0906f9aefd5a446ac5c20c8770d6932c26567a2f0d37171ebdf90c777e56bf1d"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "d5f54c99545bd12a49e5a19f2ed96167046a310f2c8942f4082c05e33503892b"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "3d215046d832b18522c25d25dcfb45b79fdaaf7ba755624e2c609d82f2a16349"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

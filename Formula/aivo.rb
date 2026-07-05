class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.36.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "8a2b08845c0e1e0301b988cb8d2800d963f0da497e564e5fdad65f32a9b18e92"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "cbf6dc97621ef8e87656578a443a437d45f37f214f2d59cafba2f350860280bd"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "b4c133cfc3536a8d979a3219c400a619a0b1d5616e4fb3af308e369999c35f9b"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "147a705b3c60ac6edf706efb9bad96a3047ecdfa5b9f0a0cc9506e282ff9d80e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

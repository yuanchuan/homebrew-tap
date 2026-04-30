class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "3d23db5a06b96c4d55e2e12325dd801898ae222d43ba83b04ddd5c20d42aed35"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "0a0174c6072ea2baa40017eb8cc8ab1766bb3708ce4fde448e8fa3dd07accd31"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "14e43e34bba7a05158daf17ab2cf7836c8dca6b93bc56ee81df692d3544854fd"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ec199a1f91214945ef042a5798359c441f13fa2f12927761ea5b05c3a0fc6760"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

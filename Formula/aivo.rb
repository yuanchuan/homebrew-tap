class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.46.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "b9ed728513ecc72123092ac20da7e1de83c1b05b3de32fce6f26f1f60da3a662"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "8552f06c50fc2e20196e3a969b55d04f1f6ddbdb15476c241e2ae09c51716d4d"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "c0003fce5e3acdad1b1072f626ce6add08db8afea4cb6e29d0d7925419613b2b"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "34cd844ce07d289f11b097cca473ab360344e387294a9e145dd2b0fa7a5a9f63"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

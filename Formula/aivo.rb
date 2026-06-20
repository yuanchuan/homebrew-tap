class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "cf181427f5c59ece820ccd297454beaa7c76c718aab5fe717bb2536b57added6"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "65ba0a82072fbd5c0f9b851220577d162c9816525977daab352d6614b6d98f03"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "3b8d14816fb51626891cadd21718f1f3c62aee495c3ab1e42bfdb801650ea31e"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "52defe9dbd0361cf1ea8c4a01fb18db413f6f73c8528bdfdf80eef0312d44ad8"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.41.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "3683a7853a19f1b217fe8fe857da2bc641c9fc5020b4389c97825582de8a0865"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c574a0b2c0c18d470cce7e655a7fe85f7315f96842dc3656ba55765533236a9d"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "81f3cb1c012bccdfcbe1110e25940040ea73881ecb8b37b3b6fd40fd1b740afa"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ef86c79420746b0c9e015badf2ceda3887bece2ff8ad7f2617a25f14151c6482"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

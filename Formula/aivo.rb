class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.38.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "a7a36584cf103a0dd586e1e9e1e7d5b485064a3c8dc6a56b07818b38dcfe9567"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "5277fbc184d675a227e448991fd24441ae6ac3adaba57f80053b648bdd3a7710"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "8c3baf2c9d55edd58ee1f62893b4fbf674ad7bb3a701194e81de6ba0801c65bc"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "9ea84a14e16790966d37e60cd15e216e928dc977adb253b5ea48d50fde24845d"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

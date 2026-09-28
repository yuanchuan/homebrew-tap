class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "2e64b1ed2467cf50765d1508af498a6998ca86485234e45b5582bf2e695fd898"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "9a3cd5fb6c3f4d04461888f8e22a9d1716e897a2ec5054c760e2d303541e9121"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "9becb6a39b7a83c04f4a252d9f4ca9fbf215d9c1fe411c3328eb704d80d078ea"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ebd6fd2ccfed4774b1ba2d76b125c70d0a0ec7a2a7cf9be2c0b666ee6fd98cee"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

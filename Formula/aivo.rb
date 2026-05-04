class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "9d9d168a5fc2b73830dd6dac8867a9e87421feebdf35b9c4045f68a06806e54d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "67d0ea372a895ee761277832f1ed6f293dc11dd7aba0b232b394b2bd902c3a23"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "6cfc89c793b63db94cfc0569e708d23f8c9a2adf3ba318f33a846cdd1c726a12"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "89fe054a2d633eea87ea540d95394084669036f84e317bb3f42a873e0f797a37"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

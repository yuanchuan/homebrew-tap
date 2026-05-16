class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.21.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "f0d9ae237be2aa2215afd24431864439c426cad4d2a2581fc82c6b3e848860d3"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "a0176a2c949ee8141f749c5e09ed320c00f6e0b5c1fc49577f68761e534c0833"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "3421bff5c9409e76352d9d960ff45955d0091399a3e820b51c467754b306e5b5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "61cd7dd5803d0da5978b7c8423430a9354682ee544742d9cffeecd8648596e0f"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "2b52ae6e19c6095cf69819cf75ea6d31fb3b82964e0972b99e5771aeca2480c7"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "b3cc4573804f8f5553927519311a78e0f013a68cf35933b2bb42d2f7ace1efde"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "5a87c7a76dfba0700a4103aa42bbd7f16df25c7c92d06ad950644725141afb13"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "937286cc853fe87959df7d9d73da98af68af6e0f06098b13a8a60443745967fd"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

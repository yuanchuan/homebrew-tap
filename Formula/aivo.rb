class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "914adabcc1a8b28aefc9a8ee404f27d2c7557a0c784e19de8e1a2fe69301a0d9"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "94f5e3e1a7a1de93772b01975c20ff18851f851c604a6b104802ebf23cab73ac"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "42c75f2e5729d6d6620bdce6261c4c4075d5f7cb887138228914a554ad2d4690"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "5ef8510be278c87abd3de0c5c5382cff3c1eefa261a3fd0ccc506ab164ba8024"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

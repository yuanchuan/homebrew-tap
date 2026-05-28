class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.23.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "6b735750e8d4a1a05f9c255b750b9fcac4e273d080aeba5cbcda182b93581038"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "aa2f13c66b992e678abcbab0329e62ed04f6b716e6f1ed0947bd986803a0f259"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "e7d9c70a19a70cbc6a926ff6f7197f2f2484e7dfd653153b15a055e332a88066"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "55fb61ff4619799273e69fa50c7004542344c5371877e42af34c3ea487bebbf3"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

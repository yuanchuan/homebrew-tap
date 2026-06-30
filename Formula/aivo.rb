class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "be6fb4404694d5519978538771445a74f4d6373d1fd76a1d02f59fd3bbea026f"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "8aec26a3505dd494aa5f5994b05b596250e2a5456acc4f213994dc298445b0c7"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "fea7704c159217fcabf651b6fc79e062c12617221d0147b6b810109f6b3e1111"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "69b7fb5497ee04386a6fe6b89c1c21e69b56a86adb86fd2cc707c5dec017f21b"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

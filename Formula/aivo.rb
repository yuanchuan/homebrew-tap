class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.23.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "861b05e2ba0545f2b518c08d58f5ce7fa6465db5890e8a712633d09675baa0a6"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "da0064adb65237e4cf3f74784063136f3f12fe5ff49a98bb27a2f86aefa980e6"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "e9fab4d4cf70b9ef2f5ed970f976d45c9386e24efcbaec3fdf6e38113db98099"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ab94c8df01fc78e630b26b777454a2e1d162e95b4045f6428108622a8d31d676"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

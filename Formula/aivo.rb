class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "459ce0f6061972c5b80fe0749f1638fdb8dd033308b87e9360ce77db704f828f"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "eee3b1ff64ab0bbf3418a1fcc492be3c5721bbda2607c274c536c478a51980bd"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "73884fa3be792d4dfec39db55c333fd2a659ad7584eae523eb5c2ec41f7181fd"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "e232a6bb2c1fe2aa372965c4d2620344dffbc55c549e27568cb848eb4d6a6f58"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

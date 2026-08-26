class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "af49d8a48d73cb2bc7f8b81e51258cce5f0ab746096a52575aaad5c48d0781e6"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c4b8325575f1b5d7584dde53f5dc3d9928799dc65ba5787d5aa908e060dcf393"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "731689c2a2a62acc66c38eb3f3624468636c1915c19b8df3d906c7de039814ef"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "353338e52e883a1f98a838803b25fd8427f882289747522266f42d0682a43bec"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

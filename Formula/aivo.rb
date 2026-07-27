class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "7a874c710ae66d85cc247ba1d1f243ec87bf2c4a19b51ca8f5d262db85f5e549"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "65ddf3d77e9691fbc27f6b7b14a8bad58e1e9ba83d0bce3d78284c961f7c4fed"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "6430edad42893ceef81633261f949588d323851c56239ecd93dc690d7044d858"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b1ca0d124817102841c6b323d79b7754762fc4605fb67cc67071ed3de1600b5f"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

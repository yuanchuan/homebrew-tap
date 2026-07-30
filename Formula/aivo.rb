class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.43.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "e80ec1ea7cb9877885ca5eee1fe6ef0c16cd70986fb42703547dbfa6c5c3b352"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "32a16b15d40a1a5095795b51169d86e1c1b283f72288324ecd4a72bde8b68abe"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "9571fd434bd837eda0c9c37cb5f87d102d7371db5fe6a665da4cf35c825147d7"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b0a96b71c98fc89686e79c211f4e67aa4b955e827ed1393ec0935814e7c3db2d"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

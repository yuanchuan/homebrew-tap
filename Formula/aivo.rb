class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.43.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "f858ad387f5b6bb128831a90bac76c9860fc994b236eb722c08e33ce35162422"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "7cf17e410da285f79a6f47a096d36c7399f893f722e6f5b25579401df13aaacd"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "427d2f6702264cd9bd3ef3ef23954a56ba9bcd15a9b51bcb1c5cacfbe90aa9af"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "a36c73fe1e48ef02ca84eb14814704aef6452ae1718d6a614fa3540468b45cd2"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

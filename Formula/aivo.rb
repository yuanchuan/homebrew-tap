class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ac509f07c5d14b066073da80ef0baa544b750385d709da6366a7aeb5423030a9"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "2dfe09f024ddf1527d3a318e0a2752672bbd665c56e3163f5a7a2cb93bff907f"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "da13f9403ae41a58385743e15a17de26f5f5d2bc9a2391dd712329d70f5ccce4"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "d959bf3858c83317ece5b0bdff848f855e213613067183e3cd83de18c8de2ec8"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

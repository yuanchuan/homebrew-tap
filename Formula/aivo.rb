class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "20cb75d0e58db027b3b808268a977160d6f5a6bacebe59ce7b96b442fbe7f12a"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "08d89ccf65f7baeabe510f7485f29f43d94193c223d40a690ea16efed23c324c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "aaf476e8f105a6a3de4ba0c139660405ba28a9b92e79195cfc6ead307cb8dbea"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "6b138dc8754dc2082e04649af3d2f1840d284a394e96bc41b8b4826efa0b5e9c"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

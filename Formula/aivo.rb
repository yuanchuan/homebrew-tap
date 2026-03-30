class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "a3fff4a7535b53a4201f81c784b582e00c4da310ee48e0674aec8d716e258c67"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "4ad201c4c9472e2b1e39415c7214dd09ec21de1420a8dda9e777d20be856e921"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "4f5cd7fb4b49e712e4958470f85957388a74026838476092138ca1f5912754dd"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "ac5cbbaf0b5a0ab021de06c61f97f1884ed723090d978355a6eb42c966734c61"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "07e1ea947bf740327ff67ee9ae62d75178455d61a77220671636f585892f24ac"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "89d1eab1a142c772de05ddff12a111c0ff6c1c6ad1a6628650ba8e81c01f7c04"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "96d8578a59223fcd803f4d15afeec548d4e7a8363d88ce1f6926c12cd2204831"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "13dfe394098c64c81de8f0b7593c1829f33756303d30f7ab57c4f7f9c2cc4282"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "dfd0ff411ddf684af36c506822b134ff37c7dff4584a1770085b3cf11f4e4ebe"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "608fa5784153ada3a4d0f1d2e7255712f8cccd9cfd6d5fb0802d36d589720955"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "8f38e2aae78816bc5e4c23e650d78f2f865e33a51b84c186ad0015bd83060d90"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "d3d9641661d10a9e3f762d306d690ba25a1661b4699a507f56c41945b95df8e3"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

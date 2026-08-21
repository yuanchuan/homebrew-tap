class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.46.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ddf512dbdd84c191ed263fa5ddb1d75fc99cc8ab465d9d270fa7cc71124e230d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "a3b473647134992db7ac99472c8867e9b81b222e58dc5fbe5dca87e36709341d"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "a1a76cd0bec0af78f96f1fd18b6b6fd903fd774ab7b55a037786f0728efbd31a"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "42e911b1ac622e45cd211153b8316ab08f91eccc1a3861eec277a36c2e6463da"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "4fb525e56aad84710a4f57ddc62fa33aba0dd3b4c6994cd0cbb6bada6a3536eb"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "69123f0b64c1eb2500ebe177311849b2a2dd8f10e7a1b93bf00f666089d37aad"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "fdca4aeb1d78012019fe12ef99df86a16c73dbbdcae0a79f6c4b26f04fbc0632"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "10e4913c543a5a8c987ab4ccf0ee6e8332b7b98be5cabedaa95f97c059061536"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

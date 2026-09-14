class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "80014c80a93d6c4d0ecc5b00fc7362f7cb5b7a573c1b865229eaec7f932fcce4"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "f01a5d1e0b192debd4f0675beedfd66c1ab314775080d10348f1d30fee42fd46"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "bd8e939a830038b1b508176793769a5c34fb34c95bd29eeb0db0a8b9ef711224"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "c244cb18e70e20fcf9899418793ca458ac547033b8401298872c56f52032584f"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

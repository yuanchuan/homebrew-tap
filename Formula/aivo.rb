class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "a2513552d890025ba9ec0886a4a0957b44ee13f26919cf1683f4eb88913f8192"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "245f9a49d298eb7b7d1ca4f8a4f11848ea047d356cbe727f0b8e85cfc17a2402"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "600b19bcca8744cc17577d7ebc75108a25647d0431064a34cc8079262ad90f24"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "71ac39c1363f1652098c98091668777521c27dfca240386ee30b1f7c9ba0a780"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

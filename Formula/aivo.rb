class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.41.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "196320e197b99b05afd7f478562bb67709407843ed158c96f53ace59aa41b5a5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "54f737dcff2f623bf337c6f7ed4b89aa005a8bc836ebd0b548f63725a8bad005"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "6d6b4db4e7e93e2d6fb6050046299c55223952bc2bf49ae3740a0efce148b808"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "a7c7a028e5d83f1088bcb36b304c99375df686da3fecf282feecce1b9822ad73"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

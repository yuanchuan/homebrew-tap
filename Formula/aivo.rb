class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "835190a00ec948e098b869c32e63da95f114d9f8755659709ba7f18200cbbd3a"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "2817d585d4d7c108e9c68d9b7ae85538b3434239a31d4007980c7ded9461b1c5"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "191af6518848ae737cd5dec562ad48b197240eb47f7bfd39f0a9ddd7168528a6"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "4b23efefd4f048b301206dadbe320b134dfd34c075c35fe1ce0a92230a878b77"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.42.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "576f4919128e41cd256a4d78ce9f35ee832ad088fce240b274ae98ca031da136"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "e5a2d0ba6d347b27b078e3d9b4e6990ab77848c043ad58ce766d370c68836829"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "8fcb5ee293a9bc86320693dcdcf9f6c4786d1c694b4f043206cb019e1ce8ce59"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "202acbfd0533f9d0c02dcbae6a87720c20bd4040516b42d3794c586011eca5c3"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

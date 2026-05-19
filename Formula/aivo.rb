class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ca97465ae2922a72b0b484c14d1e7e5129ee890c88c0c2f55e6af99b7fcb20c7"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "e86e1c18cf3b22bdada0ba91865a105dc97b4b752683f3a674e22e2de60123a5"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "0ede8ceaf9ced805b687fd00ef9b957b349fb8caa7ce7652c1f5047f6a699ffc"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "084d09fcac7ea72a47582d253448ace732fb5e1dbc60cfd2fcd90924f5b5910e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

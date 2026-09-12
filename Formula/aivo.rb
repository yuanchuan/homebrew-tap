class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "6e2cb37b189aef88eb94097f85bd4defc1d19d74eaccb23e842ce99a181fe340"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "eddff0cbd708fa18af036d79c1cc50e8554fda81aa03acff6c256752f84314c0"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "37481cdcbc2e44e554f3ba9cf3fb3f8b7d306a02908217ed83e63b3f3db7fb7d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "140ecf5a12a6cf82240c855d787b5f291f5548ed3dd2480212070739a6fc19f2"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

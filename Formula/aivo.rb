class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.31.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "e33458c84937ae3c9e36e696c1968444a8a4f5f66eed83155f7a4fca2028dc3b"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "368fc5332d30aa7a8134a466572ea66bcdbf5d21e5c0205223f7cce7f8d1458a"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "5b633105664acacaf4ad3639779814e8b8999ab1d40c9dc2fd70c6eceb6dd6d2"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "655415eb299e7ca42fec109be482757116d4902239e47fb92b2cc92f87b2ff0e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

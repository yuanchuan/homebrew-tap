class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "75554d91217bb4abbfef3a8ec43366b2caff65543082686a4054b308b8ed79ad"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "d9ea44fb08b1d8e5de3c6135a12551c099353d5da12fc3a2cc86d535e439a5b0"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "4662f5fc25cb80a9ada4d18bb156e3295c8e01ab70cb4f09524f0288bb124297"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "91aae8185176f244b9a2f15e81f501ce9b67258d594543a0464db7a2c8ce280c"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

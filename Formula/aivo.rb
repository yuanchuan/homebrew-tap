class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "1e5a17c6ae879e04a48e5b20e0521df49929738487c688ee961cd421cf343e06"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "10aa02f6d05abcbb54a622533af06db8e11b2ead52f3fbd93fd36f0ad678bf2a"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "0dafc2faa4542493fdbb5e71b5db4c7a1a34925d765df16abd359190f63c6ba2"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ab738920b12ad3fcd8d3528c679254aaec26084938627929c55ef14fad70b6be"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

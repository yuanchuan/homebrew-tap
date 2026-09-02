class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "fae0c0b86e3226695ebc73e7884d29c675064054fe57a1e16504f51c1e03fb7e"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c81144bb7617ae702ca3fc5c8c5a1e2e34fc0a33606ec4491a38da8c19a28485"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "c46ba3f16b0afdc80422b8fb537454941acbb09f549be7bf2f987840d8e58120"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "bbdc134de9ea9cb9487a17875f0c819cf944c22dd744ca861c49328ca854e77b"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

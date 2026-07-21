class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.41.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "524a8bd0d923a43ac57d466c3ecb70523cf519b7c0cfe5597b65bef46cf620b6"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "7060517d29dcb098ac2c50d9f5330698fbb7265981c8121277e6983f752ef8c1"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "86e071bc10ad12e64182967e139cc8f19c0c75d0c53baf10faa5022ad5e00359"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "dfcce06fe229d0463607daa0de9fcde656ad562a2d453b31fa53573a56a39dc2"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

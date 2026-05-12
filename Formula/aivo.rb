class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "6bc1cad4522940ad6b15b8fa26e7f24348663b7b4a4bb99ee8adc82a0853efa2"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c95f87d635d15173ec825b560069027cfd99bce67b0400246c7f3d7f137601c9"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "3b6b50f889475bed03564233328395df7551760cd1ade9e7f702ee42c505d0ed"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "9c086bfc787d8a9f9a2e540be1f77ed04d173b47adaf4ffb145dc27b0189de00"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

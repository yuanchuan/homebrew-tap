class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "dee24fc62cc32a9b59e02662af1350c4803e3af587d7e15f621dea7b9591c3e5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "fb497f83f6ed45ded809021a493d722fa85692c208a6881544986b8d01463db2"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "cc40615a750bd560f94c6f61293e0e8300fef32860c694de0d3e786b16db33e7"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "87d0a3721cc85fc49ef44012b6861b23980f8079adf4fca89ba8aa6cc392cc7b"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

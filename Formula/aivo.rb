class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "61d45e371b068bae48b18136a52673c09b615c76eef079d457a080ced3a91050"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "f073d825fd27e4142f17ae73c0432666554ede24d31ec8a3f46d7368f35b71ec"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "51c8265e24b5566db106d07f3dd967142924452dfeae0ab85e3cbaa5094dd628"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "7aae8aa0e74c1802e6070b62c7069c8bb7a3aecc862c47f0bad0bbaa8c26a571"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

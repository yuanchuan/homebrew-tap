class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.23.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "d56bd033a7866595bbdea1e50f929b6fa707ff2e85f1b0fdd146034660704478"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "43558cde49bd5f7d83a98ee4a536ab607eeae351d85498de5538e393844c6882"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "76fe824acca7428fcc65c52141f8e8505bbc84fcee556aa2f8c144ce4176251d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "7fced07c6d68d5146fcc7f2e7fc62848bd6b4a2400458e794723573b6c0382a1"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

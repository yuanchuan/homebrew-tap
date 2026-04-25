class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "7ebfc114c998a01a8744ba6210e75c7c5415bb93031b6f59d0dead5bfcfa5635"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "733bc0f0ce24bb7e7c75fdf2aaff0202d4f89b3275977a4449e2f589300b5387"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "98b121f4512d3975338d4a3d8c495a6e62902a9b5df6a2ca6de787a190cebd70"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "2334f8648e9f9984f0450eb8f2cf992c4a1a770017e34b484bddb83f5d7d1dab"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

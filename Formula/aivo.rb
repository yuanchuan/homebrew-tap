class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ed55fcb2d2a59a64f2281f695645d29f18c3a7467e926475261df9dfb1d39da0"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "d380b6daad88b657ef31a10b5932ef93eaa4dfa074acd8353edba1670a96899c"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "c7b9f4776fc2e0cba97833e68d4e0ef288e4481cace5109bf36b532aad986eb3"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "db301718085746b2a2ae60fcee8146ea649607c349fcb0f8709fe66f2be20a23"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

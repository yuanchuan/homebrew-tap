class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.33.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "29accce52da60d8e9cea494c71bdc5fcae1ac64a991f8a3b81b3408e1f3d1653"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "5570a0765e9879b8a151f43f94d69c57630f0082aacc5eb9c34dde777bb5139d"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "9ed7e113c0364bdb6edef512b4f78cd9f02ffc4dccd69a16e5623899422a1f3e"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "cbd74301f54cdc868da67ebcfd815155cd2c5960e7150a82f608718eac9e7a1c"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

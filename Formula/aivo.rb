class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.21.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "c83299614f0b43118bc8221933f4f6e596f2cb002b8d2ed1d5a3d04b26986bba"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "1a27704a9db07be814e2748407d82a7e8434eee7048c6c5112a6f024fd02af95"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "cc8d73354b4f9ea0d3910a34bb39065c21405c4d46b5c51c860a260e7522e46f"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "39b0f74f49b7bd97ca7720300585e8883cd268504f8792a91d4f957fb56f338e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

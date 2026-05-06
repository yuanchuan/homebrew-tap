class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "af3f593dbd023463127d3abafb1da897b8672ceed9fdbf5520e9c8cc79c4d323"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "1d402813e7067f2157e2d0de7a77a50d6cd4af3b7ea3fa7c93c70b0837f08e20"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "b6758edcf451b9602ad52eb50db620c45e0464ff4c21b1d16b00269808f4f6d9"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b9512b1f31ce998b70b5f4324fb9d419b3b4384a8f438538d4046d00ecfc056e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.31.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "fb4f76a7bc0b3bf3f45845d874c2dfb0297b3a4a34d322fbc94c1bb242ebbbc8"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "8e671cee5cf6436cee87fa85a0c39f20fb9a117fa958442fe20b218c86292d61"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "0558549f4cf7d65d3660728947c25d99341b344f703b68ab264517eabca477d6"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "24373a794e9de30b35a45ee754c9bc10e40e3e4c3ccb843584b3018c59647b3c"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

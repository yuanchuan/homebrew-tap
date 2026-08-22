class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.46.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "1d4d5237db5681f3c28e1ff3a53970434f2b98ffbf5d6526f2b681cd59f9780b"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "2e7f01ff47bfa7cfefd8492831fef47aeb1f241388bf61108e00208d4c32fc46"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "3253024ca5177a503c9aaf2bdfe72233f50800c9d411968ba00a94d3a13a6eca"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "22f767136d6dfdd4644d9e4aa5d368a2a666b10d478f767473048f256213c0e9"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

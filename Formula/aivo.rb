class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "c8b9f853fa19c0e3c5368a18ce0450de20dfb082a01645a72f15380e49ddac15"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "1d520ddd7a1d8ba49ae872161bee8924a135c7e12355110ba51b46b0e157184e"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "1337376c9399601c0782519c26ead93d00547bd7ca0d55cb04e9ba9fe022c853"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "07a1a6b20abc927f7c98efba600578ed755b86947f6700915a43d815a84d820f"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

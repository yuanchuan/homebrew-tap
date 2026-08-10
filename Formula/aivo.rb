class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "5c9c95017a59ba395c2b49a36f87608e26ace313f1c5cd91e100fda1a4d723a6"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "1a86af24f8a48a422ec175f702f866cf5d1c16b0615ebbb3f75743c0d1d22799"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "f40a5835cd1e7609a113b90f1900c71c8a04e9e017eecfe8b271ef1c47e90c5e"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "a44bc6ab7378963e37cbdcfa8e85fd48f69dd226d067616edf152f449ebc24cc"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

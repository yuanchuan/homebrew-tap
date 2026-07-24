class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "5239572edcafe10e4dcb5a594ec6ddc7d6a37791dcd3b86f20d30d97246ee45d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "cde43d07b627c66c2d102fbc0288499951283d0e946f98a4abf21376fadc0cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "858e48d0041f1349a270df1c1328516f8ff8879c2fe31316a916a2333cccba96"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "c52c9a4dded7e44bfe6c49c334c1d23d21a48a977c3f855cc946edd78d093bd9"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

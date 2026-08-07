class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.43.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "cdc428953e655bca11eb976faf7af27983a51efdcaaf0c9a0f01ced1d504057f"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "97c1675bec0c6ee9de42297c8114b092b24403fc0afdd73fcffd061ba6dd7bfa"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "cc43d7a972e4e88ed54aea82a28b56087e1cd047c5fbe918b7b2d02696682dd9"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "fa78b43a500ad12bd83e81ee0c21001c6898d154da8c28f9f7bbc4d1b06e8abb"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

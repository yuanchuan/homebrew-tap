class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.43.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "2e741c3442817538fe8256133764d5b9e1d40b607cccb1e8afcd65908224fb60"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "b841eda810500b9a221ca5c013d521fa0a5f1064db7b0913def2809bd697cacf"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "36601da5786f067ba0c7586ff2fceb1e10e26e78b54f1899681d2b597448e10c"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "9f5ef54d03db976af6a6b44bfd9b538a4892a06f7b4d307ed9fa9aedfff54fb3"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

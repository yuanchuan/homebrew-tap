class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "1c9dbda3e4a6d02b1c8660af2a0c4b903d24fdb43b9a9c6863731b3f024e4449"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "ce86f3bfbb8734cd64ee2d1185046634faaaa5b50e1e8c75a1e7ec22671d3c85"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "c1be57fb4a40801799a40824653415c26566347ec2d8df1c5f5e0a66daaf8fa9"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "6fed682798ecb7a2896c82d2fdf54410ac7f79308a14c203f7b648cc7d91741d"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

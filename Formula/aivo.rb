class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "7f03240473d03f5c3ac2dc64794c0f812bf4d8db0effb209b51d1a264eb86b97"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "e03a81167dd549e7611b2656deae99384a21bb97477670056c655e48f69b5762"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "3d52584f564cbb4878932cbc3a44878b1a4daa759492c43851408969899fe33d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "10ebe87bb934b71821e0066c709dd3d70ca99339043e57e10656ae8ffb5fd59b"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

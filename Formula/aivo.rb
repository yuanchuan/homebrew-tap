class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ff248429843beff799ca947e1b9ee82dd5555a5aeb22157f2dca2696d39fff91"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "8ba67196c9677b5fcbb77d01927a2fb30892ecbaa6efc2a4564a9e92f5734a35"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "42cf20c9f889f54d36af0af1da76c3a46c9d349590942b7a2d9538d4682d33ee"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "88765f17b28c1e0bc07bfafb240982fd727c7e8e907414a611a3dc08cec951a4"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

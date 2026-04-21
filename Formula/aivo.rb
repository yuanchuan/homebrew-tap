class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "375d5a37a57252343f425a3e39b6e5921e34653de9f2dcdc557ba1d77e2ff723"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "3d8c3b7e1dd9ec31a84c890a8341594a06a5dd77fb015e766fa2916ad239ca2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "21000e2d93f09a27ae371b3bfff69960fb96d31737a74061e0a9c4cb17fee2a9"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "ffe753350d8fbdcb589a64f6c6fa4ab2328e9bfec210727f9a3f9ec3c96fb3d1"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

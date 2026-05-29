class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "0fe15aa13b929b47b46c4be34cb4ce4180014a53cccd44eaa07e4317a625b512"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "b83f98ca5734c8b7ace73db8a1dea43a717660b7489bfc94d35c6f19c001f03f"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "4b1ead05d7d2e813b3f4722e32b9db01283fc4302f86c8ac21e7e2fc205994c1"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "955ff79b5901168a4b2eeabc434af31be8659ba1fb88c04a9c4a6fc7dbae5217"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

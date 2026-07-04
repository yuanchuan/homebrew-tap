class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.36.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "beb1526d73d21fc493d7b130779ef2d2ded7170563a4f315b39d70e2b52ba858"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c41f8b7d22f3f10606948a0f832baf6c2f409a7dfdc8f658916f46e948f165f7"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "46627662e8bf9854523c344173b2a7055fa478941d624080cb38ab73bf6b3004"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "8efe980897d6b09f770d5e501baf54e7441ef4622e42d00daf5ecd08e840663a"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

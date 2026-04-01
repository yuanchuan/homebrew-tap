class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "233b0bc4d4290d4ceb65a614079071f3007b81c631bec0ff31975ce63fb7331b"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "72ae01fa80ddae6c624e6f8eb9784c079d9354c3ff0b9c0aac9e4f771ab91af2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "6b188a92edc9348fc07f76d53a7aadee6bb7a96daa3235f8e5aaba2f03ba5ed5"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "2574f2a6ed49a1b1becde93419ea7b1d6f8ba118622d34832b8ad33a0c58af95"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.14.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "c6cb455d13d31c6970dd1c1b961d2b89a2e0ff3d49ced185fc0d05fa720a086c"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "89e8d17b66bd47cd5016d00955b2b5754205ba2b993e2b2e0c6fb58cf087ee12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "4947883bb22e58ec8a2ff8ac975bd7972597882bbb13c1054542e997bec9d51e"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "9827d943f4b5371e3e865c6589ebf379c27fe6074af1a7cdaa810d2087c299ea"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

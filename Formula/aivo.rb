class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "87f7b4e71db6c4e71ea81149466884a6531b6da8fecbc0b13dd81533639968fa"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "764b8b87ed91a3ce0e74f7d6dadbbed1af2440f9533c85e7864fee4603c813da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "c3153e0ef475d24bf373446c59cd2a865a955eac437014fa1d510053010f6899"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "575d8bccb776037a409fa3273e8b110458ed4c40ffdc5dc9947f931ff3284a64"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.41.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "08ff33bddcdf98653300056aa67b2d46b2233dc1692506e86565a59f36502962"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "ced92526718bc882768d75dd9b75ca96c6086c74d92d3cd8beb9c1d7248474dd"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "7f3aae2f0664c04af1063591b73d3087bd5db61b713344102f4cf5740bd0b4b7"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "0cf64fc0fdb3abbe2dcdb202288aeefe5e4b072a481a4d2caa82db09294890f2"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "858899bc606c558017fd907b5e31616bf33ca0dc3d86a2d48a3f95d0dd7f16cd"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c5cc0b4fcbd9d1c7c641b10f7a4f0452656d8b477ca6fbfe9839c86afbb56f26"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "3e34488e2b8a4df551cbcaf50437ffd6891cef5c62e633b579837a65d6a239f2"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "bd063f50fae7d5eb1735fb1764d3aeaa5616851c9fb913eb0f231f472175a56a"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

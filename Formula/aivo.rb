class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.41.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "186fb904d38dbaf814fa30356e4547c84d6700d1aae3ba1435b562f8914f2ef5"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "792d7914d65af5053bf3161cc81bd2090540e811fde5dc5a9a3357516a09c26f"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "4f46fd861c0ba2e08c2829192b946b40b24b621e5023adaade8208fd8825af79"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "9f38807f1b0c2bf790215dd15d8e6d76590d47b708f6740c06810c6d84a3a45c"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

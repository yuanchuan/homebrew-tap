class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "860fed3e99efdeab7675725d51cd929201bcb73827f54ec3cbad13db384b61d2"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "2a50acd9803c215d88f82b5b3baf74811db6fdc0e370816b5065eb849ba20bbf"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "20a077d941be4968d4125d781122a7a70208adbace45830b9de3f54e24f15df9"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b36fd867e1b992a9caf835482b7ae3a2221ae42d2ed1c030719aa0340aec5cc8"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "92bc24694a9b86794e386cd11a93d042f028fcb0483efd979e8aaec2bcd1f513"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "a7b26c95878afd035b672080fe5c9d03c577e38cf550ab4f173813777fdf740c"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "27961501669a4f6eb745441fe19f9eaafd5fa6094c68394db9c729c5dd210b55"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "277810bfe77fc0c39ea253bc99de18d459e55db960f550cab382ece8c34f0aa6"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

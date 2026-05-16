class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.21.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "3b8df81df44d60edd821dc88e4f18cc38bc4a99813d32dd981c368d05c8cd340"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "5cdaa490e877f44ff95b58ed2308af3e7c0a67c44f66e250dacc82469d31bcc4"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "d97f8463a70d1de5fe9bedf5413540c528dffc512dd82af0d6f332d6c182bd73"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "10a6ea6b600bad050647a9e904c41803087d6b9bcdeee66123182c64eded409e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

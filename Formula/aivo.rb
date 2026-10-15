class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "c21ad75cd84438e3ac3106c90f2fe65e2d1ae2ca0ff0a540899a8f7093d3aae0"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "f4a2dbb5cf5ce7a45beec77da1c103900b6e5e0652edc2d23de630fa55b470cc"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "15007cdea487af0797a604000935c231ca776f1deb0e837b4524e1991e42ab2d"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ba75ccb191d4d96e14e034e771a08186b1389c92467610593430dbee4345a91a"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

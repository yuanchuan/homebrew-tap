class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.28.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "7a6f6d00189b4ffaaee783936f4dd7157cce6d2502fb2321f1aee51131245749"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "3d0955114661bad9363bc89be5f5e1fc50839c202a2a081d71683a242e9f98d4"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "1dc983f0eeaadeb1b8e038933824eb9f8c08f265db9c0bdbfa7cd8db27927b60"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ce85715c8aadf286c87012279b8489bafb826c516965b89456d2b8b24afc31d4"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "8252ac78d8f0aef56a02e2087ef3b3f7a5fe781e7cb4788f80983e5cc27b4d95"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "2f808c1b5d49e6cd1810814ceba70c9d92a6f7543f4cc77dcc9da3c940589232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "91bd808ba4056df9dfe7bf9bc0a057a924330f3713bc03bb51de278a9f80ebc4"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "240f3cdcde91b2f6c7a0434e4f9bb8a768306473b5bd5d3048eda18ce9ca9c0e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

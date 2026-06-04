class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "c143a71bb4ab87317dd00f040b7aee93eb29c4b600fe4dccac4c04f6def502ec"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "02484733dfeec63106ab7d1fb4b337627c27212bee01bfe6c41f8c76d54ed67b"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "eeee7a40aaa0b260184f0a1b7bdf4c503177141bdade7cdcec887e05465e90e0"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "e77ab065509d01176cc0889af96b3543fabe6e696f2f00d616e96237b6d276cd"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

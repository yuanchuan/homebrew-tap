class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.46.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "c3a09460d985f71dc40eeb0880e24a7324398189c60592ede96ba847d7766561"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "ae81e10af8b864d68c301975bfd0613724678bd63dc0dcd01e327408c478dc4c"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "f751fba429438201c51503cc9baefb6a52315d23832d17971084cc6b9eed4e60"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b9edc106de62b02ff7879b84ea8b588f4c47ed00d6d7d100f9fb404b55ac0535"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

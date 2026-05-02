class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "2ddee21a59b46c7fae1d7b92aa46dbbc05f3a46296d8fee93a7954e5035291d8"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "deba2387c24aa41c40b08caabf19944cc2ce0ac5933c2231342134b0fbc22e8a"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "b2324ef73c516159c8c98e06dad72dc310de3ec514bf38cd355c9ac6ffaf2342"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "cf13d0d283dce467f6158300e088a431b62276476dc16aa3821ea33c74cb1f78"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

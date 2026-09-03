class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ac25aa0224a335ea4050f6a849571d7f70311346a8c7689292d9bc9330e8fb6e"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "2fcc0ca1257c5c06ac7eeae66b02643c18d068695fce256c01994212de6f1750"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "d240102667615f20387ec9ec4c5e48ef6977ec83a8029ae52e44ba3a517b5fe8"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "fbae0460d7644bc81f39b664ae90c4b034cfb89fbbafc4f406e3311050baba86"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

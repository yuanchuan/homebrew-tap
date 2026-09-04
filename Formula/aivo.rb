class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "170fb043b10346799f7c826129bcc37350e6b51fbd0560c8e68475f846f2a2dc"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "ab2de49bd18297a544ca65d67cda94a5d3cf00974f245e1fabdc0cb82f9015cd"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "d0cff018fe97758bfcd0c04931d932e43182c8aa00b257c089813ea7e564e999"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "0ad07d8dfa517d712b9e156fd65da8650abbafcb4d89931376c3ba887dda2d0e"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

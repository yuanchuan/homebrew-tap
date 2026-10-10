class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ed3ae72713c3608477aab03560e79a09600af1fe4134bf091c672dd6c41f22df"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "5ffad31e8688a7d76bbbbd23210459798a9ee2877b455fc3b9c422a38e978221"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "d1a7cdf9b343de904b0dc46b038c5eee3ffeb7481496277ad4bfefcc7e3e10f4"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "8bfa614a1d29c7af95891ef3b00da791836ecdccc85a0e625cebb56f508e1c8f"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

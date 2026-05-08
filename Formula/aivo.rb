class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "8cdd6669ee256c6d4539727d26303cea12462f8e31f9ebc2e5beea547044d8ad"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "f0dae5a34629a6e657a2f378003861a71d38e5b7e7330017743c333d1c0b7526"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "1a656e85b350069ef01189d7b3df9703d90d6280b98ebc0b2e86809edfe98d9a"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "5cbccbff8d022381f8d9636af02998bf7d1943ffe8a4076a0b7ce8ba63c48189"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

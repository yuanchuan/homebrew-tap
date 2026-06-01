class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "8be3f3407b93ce5b168ed4f4429cf6b5cc0a301767f90d0e1cd47085e213df74"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "cf06cba175806e2eba264233010f2986f0bb72b59b1bb1a7fcec80308506d546"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "84af94f7799cc75865c767b269f82a872f80a263ed9e657f69ee4e60f4736239"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "266a522dc59675163cbfeb9fa76e645cb2b3c8a0bd203ff76320ad1f8c06f216"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

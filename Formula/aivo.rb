class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "ee3972562c325112556a27d3c9fe13056b3a59ff6e138213dda3aa0c8ef81361"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "a2eeea46184c393b74e34ed697f070ca0d64da90100e02a656e71b6563f7462a"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "3a7e8e94a402fc91abc1e8066395b94f3aee81d9f03b712a51133fc3254efa18"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "db1146daa14841245e1cecf10f281d0db5631bd243e68ca695e32706c9fe6fd0"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

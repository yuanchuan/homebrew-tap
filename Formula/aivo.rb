class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-arm64"
      sha256 "9ffcbd68672c7e2efcbb1e1ea6deec6ccef93a7f2e806aca8efbfacacc7320b4"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-darwin-x64"
      sha256 "5551bd0cf42c4c224322ce0529f1f7376b7cf0ff3f5664a1876920c2a8acceda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-arm64"
      sha256 "be6a3de916e7c1f64c7181848ca2484707d320f9ccdd1f8bb2efa104957aa66f"
    end
    on_intel do
      url "https://github.com/yuanchuan/aivo/releases/download/v#{version}/aivo-linux-x64"
      sha256 "e4e6db1df9fdb7023e8fb1a5e2f6f9cc7dd0bb68c481e0f8e7513f9b4ff876d6"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

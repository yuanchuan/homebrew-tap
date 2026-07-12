class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.39.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "71b6163be5e4178167b5d7a227b1fa8fb27a7a20af1723fdac45b7613c4d44a3"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "101b2e502bb79efbdcac3a1172b919c5c6f695e2a2610e44ac0ff6b30f534fd2"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "28f475201ecc70f3d82fdb63b083ce597db3fe75536049407f6a55407cecb070"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "a2644e93e9db06962e8329e95a8f3ff2fa04f4095d20496eeed1c2a76f90657a"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

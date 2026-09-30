class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.49.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "2b61b06a614342efa00b7ee5d9a40658c4491bb56b9de28aab23ecca7933f36f"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "113a7abc2deb229fdd94b1b1f76569b6276690977810cb2283845f565154f4ef"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "e2b246781406ee40002a2de7839f75dd99ef9a08854ab52248860efb51e48c94"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "d079f2fe19ab7ae152a3acbd3cd1426227ad7a11f470c5eb6f47ebeaa0192429"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.41.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "81b948dfb3e7649d3bb22b4a1eb50514b021a511649fcb549cb8f3f3412bc33f"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "01925409059befea30d76658f6f2145c2dd4a9e2594284c67102bb379c045a32"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "f51658d3d258e5de0c0e377bc30471a4f840cc4ddceca6f4366b22d4f1a2df6c"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b50319cf3ed89e4ebc58086c83af9e79e42b7c6fc4e97f33e21c32366d3adde4"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

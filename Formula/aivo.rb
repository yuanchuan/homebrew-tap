class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "7c154c788c8451917ac9ece386b870b08bf1aa77ff6574192a35116520517e09"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "30838c02e9854e79a8be08df1352ce1f381ac05a967b0b22681ba2909096129c"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "150e4588c3145708d03ffbae4daf0af202b942aa16d7c6fdf25f2357eb130fdc"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "b7056e56c48b4868dd99f9c4b1166c8b0c7cf75c4c9f8b55a251d7f164ec9b79"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

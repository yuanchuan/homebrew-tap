class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.19.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "7d6636db66f9099272ec421294d8ae1775121b708132d21759799ca747002acc"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "c154a4312fef3b42a8bcd36c3e878e40cd9c9261ea13d613a04f8e3298f33b0d"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "8976167c4f4cf51a861b0c14a25506a524f629db09e26466332ef56cf7986e06"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "cea4be49c5d42d5977445152f7ba0d0c6e96d6c4cf9c781cee3d72051877dc9a"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

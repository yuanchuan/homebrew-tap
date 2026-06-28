class Aivo < Formula
  desc "Run Claude Code, Gemini, and Codex with any API provider"
  homepage "https://github.com/yuanchuan/aivo"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-arm64"
      sha256 "5c76075c7b6fd12b9a4721860f6edc65b3fc70f41422523e0f05dc1aaf017785"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-darwin-x64"
      sha256 "8f96bf365c8dc347e50ea8b5f984da57643c0562528ee4baa8413d383a5c0e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-arm64"
      sha256 "9c44423922b838a59742ffb0cf7e0fa9f721ef8a0adcdc2be3037b96b31e4280"
    end
    on_intel do
      url "https://getaivo.dev/dl/v#{version}/aivo-linux-x64"
      sha256 "ddffd9fdb6a8424da31663df528ba18e713d3c7e5fb3ce64f931524c142834de"
    end
  end

  def install
    bin.install Dir["aivo*"].first => "aivo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aivo --version")
  end
end

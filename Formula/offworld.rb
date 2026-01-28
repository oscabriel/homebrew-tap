class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.1.6"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.6/ow-darwin-arm64.tar.gz"
      sha256 "afaf75794f2d8f0fee845b66c84ced9f215d8f566ace20e5e2eb27b8d9c74756"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.6/ow-darwin-x64.tar.gz"
      sha256 "7750d472ffade31495e188e2efedf7b00ef55d98d7dd03a227bd6d46e3292169"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.6/ow-linux-arm64.tar.gz"
      sha256 "eb61c8690580b814d1d42b23d278e1df0cf8eef23849efa5de1d11ff64f4da68"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.6/ow-linux-x64.tar.gz"
      sha256 "3cf3a0380b29880c024ec66e646753e318682432e00345a4104e22087d750cca"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

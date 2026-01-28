class Ow < Formula
  desc "Offworld CLI - Generate references for your dependencies"
  homepage "https://offworld.sh"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-darwin-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-darwin-x64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-linux-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-linux-x64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

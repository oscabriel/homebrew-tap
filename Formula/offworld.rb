class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.1.11"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.11/ow-darwin-arm64.tar.gz"
      sha256 "34242ff3f520be6c6e9527b17aadef321aa92b87a2b4549a4903ee502b836270"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.11/ow-darwin-x64.tar.gz"
      sha256 "03db7b8dac3ddc83b0219eb2ddbae9e0b14515a9a13a2a59ee9032d74aa096c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.11/ow-linux-arm64.tar.gz"
      sha256 "9dba4aea41f260328b9b941c9b339ab823601f6e73e0b0659292e0b9365ff6fe"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.11/ow-linux-x64.tar.gz"
      sha256 "be543a4f1f2fa2d42e6d0daa28054e713d5cfef5d9a6e615fe75de612dcb3aed"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

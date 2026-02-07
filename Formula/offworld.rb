class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.2"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.2/ow-darwin-arm64.tar.gz"
      sha256 "873ae3fbdf739e3d9041930cbbd22ec03131298101aa382da2ae29c27e5f87bb"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.2/ow-darwin-x64.tar.gz"
      sha256 "cacf4e5984e29b3d85923e980c7fd620fab80574dd5de5b26e6f038c99a6c7ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.2/ow-linux-arm64.tar.gz"
      sha256 "dfe03b55197b31ba56849325b4413993e58378e76cec55c958208109a03dbe7b"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.2/ow-linux-x64.tar.gz"
      sha256 "ceedc693b0dd740ff60e90c15d676556a250c4448dac6d9b247f1fb2f7c7f84c"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.2.1"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.1/ow-darwin-arm64.tar.gz"
      sha256 "f831788e581b188581556fc42b59a8b4460364f4d9507fbc9a3d69bf141b283a"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.1/ow-darwin-x64.tar.gz"
      sha256 "763c5ca58de6a80c8757802df9a7757d66dad07806770649a6e0b45d914664d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.1/ow-linux-arm64.tar.gz"
      sha256 "0d38e2221e9a8bf2dbe48a4a34f19a43960eb3147141af28ef0e0c3cf119dce3"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.1/ow-linux-x64.tar.gz"
      sha256 "63933d41abeae80462e0e885cf9f8a41897349a3302e36bdbedfdc07aaf8e911"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

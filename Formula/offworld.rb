class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.0"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.0/ow-darwin-arm64.tar.gz"
      sha256 "3ea5030a99ba60762c8e732286d01e737d7c901dfac589e444fe8d26ffc39bd5"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.0/ow-darwin-x64.tar.gz"
      sha256 "00dbea4c5f9c26ca8b9e660556d1a41049c225ee95fe1360b1745a3958673894"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.0/ow-linux-arm64.tar.gz"
      sha256 "80a9a19c06888943ad7867202c8d449669b0d50e34065b26d5fe962b82a8d4d1"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.0/ow-linux-x64.tar.gz"
      sha256 "260835fb8f0420eb236c0dc5b1dd8754015036339a78cb9bd67394e5440c72a9"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

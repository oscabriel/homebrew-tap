class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.5"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.5/ow-darwin-arm64.tar.gz"
      sha256 "893888f73e6d9231474266d844442c04381833d6107c5eb243327106361100a3"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.5/ow-darwin-x64.tar.gz"
      sha256 "41276bd0f35de539f2f9889e977251d6759cf8bf5826ecd40dc3d23c67475c3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.5/ow-linux-arm64.tar.gz"
      sha256 "098e4719f3923ced7f85e8e0bf91a6575e90301bfd2bffa4b4f9e8b488e4ab92"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.5/ow-linux-x64.tar.gz"
      sha256 "702d4ab41efac61a456d0da39912fa7d0b81587d3351aa4063f63c006aa2a7ec"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.2.3"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.3/ow-darwin-arm64.tar.gz"
      sha256 "f39cc97adf9c24107eb87840bd7ca22bcc0e4bd7be7dfea085bc1575a4561aee"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.3/ow-darwin-x64.tar.gz"
      sha256 "1573bd8342f8496fd7da52c72712a3d226f14e11f283c6d82a77356de31d56dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.3/ow-linux-arm64.tar.gz"
      sha256 "bbbacc18217e0dcf01d3f07cebccf4ef11c643f5b6a3d9aa9d4fc5b4b26b699f"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.3/ow-linux-x64.tar.gz"
      sha256 "5f6becfca312c88ecdf175e7f02034d2c4eb70735144044757b70925e034ec68"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

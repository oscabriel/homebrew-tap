class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.1.10"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.10/ow-darwin-arm64.tar.gz"
      sha256 "b6410e6a063ccdcb4cccaeddbd6023b9706ade929f8196809cfb01579060274b"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.10/ow-darwin-x64.tar.gz"
      sha256 "a37e2d5b10ea0e22b482b5bf138857d08bac56fff9b1f02cd5462e1e7b7be81b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.10/ow-linux-arm64.tar.gz"
      sha256 "006e93a197c24aa2add4b11dd041cff7a03410c434e370561be629511e241ef7"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.10/ow-linux-x64.tar.gz"
      sha256 "9991e6bd9ae4d407ef6a0e7e7cef9642ad3ab5b52b38f869b3b7ef1045c92283"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

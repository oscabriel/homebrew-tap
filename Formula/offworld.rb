class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.7"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.7/ow-darwin-arm64.tar.gz"
      sha256 "2e2407400546d8eb4b91828f0544461918c4d498654b91e831060272e6da89cd"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.7/ow-darwin-x64.tar.gz"
      sha256 "e854ec4081f5fd085d422e8e30191b6c17c06a1d12ccd4cea11985f343255437"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.7/ow-linux-arm64.tar.gz"
      sha256 "63646cd758405b916450604f510e69b9885e36a0821cac247fab9a542245391c"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.7/ow-linux-x64.tar.gz"
      sha256 "1f7a2a3aef0ebf617262e2775849fcb1ca32881faeff4659d71e4189d4097053"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

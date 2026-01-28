class Ow < Formula
  desc "Offworld CLI - Generate references for your dependencies"
  homepage "https://offworld.sh"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-darwin-arm64.tar.gz"
      sha256 "e583ca96d079bdf55374da56c32edd6db50f8b401dc56516b07d3c40f185b6c5"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-darwin-x64.tar.gz"
      sha256 "2cb9a75eb723baccfc388dc8828cc12143d569e5c251953957cb09c7be314ce2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-linux-arm64.tar.gz"
      sha256 "ad809c1c4e6ffa545974f72015092c07110d029dcdc1f553f789d5223b0b4650"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.2/ow-linux-x64.tar.gz"
      sha256 "c2f32029d0b84d056fbb292597f928c0b9301b020779c25f81b13725a1893361"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

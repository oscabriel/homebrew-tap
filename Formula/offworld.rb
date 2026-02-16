class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.8"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.8/ow-darwin-arm64.tar.gz"
      sha256 "71286c80a887d60956389dc8aed6115d0ddf08cf797ef2254a7f09bc0ce8293b"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.8/ow-darwin-x64.tar.gz"
      sha256 "715401a2a36b71139de464d9c4f4c737884850f6f4584816cd2d40aebc5f56d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.8/ow-linux-arm64.tar.gz"
      sha256 "9302e6633244823218cdf0f32d8e545f176780645132887710256ac85d499476"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.8/ow-linux-x64.tar.gz"
      sha256 "6c3bf1de9edae5634a1b6b095d8f1e38d57b9839c5c2e2cc99ae7096e8215269"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

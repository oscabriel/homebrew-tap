class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.1.7"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.7/ow-darwin-arm64.tar.gz"
      sha256 "d8a51ef879f1f0d5f62e63d8b18bb7a562f71260f3dbdd217ce75ef8623abfbd"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.7/ow-darwin-x64.tar.gz"
      sha256 "dce57d8d689f1e65d49bbc3dd051c7f0093ecbe0c3532ce3ed402911262d8751"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.7/ow-linux-arm64.tar.gz"
      sha256 "ad14f9d904a6c700a3534b2b3e5f357007dfbe54609ebb707faffbb54b834e1d"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.7/ow-linux-x64.tar.gz"
      sha256 "8aff9b51256560178a1e41f638350f55b674aa0fdf5b3c36e21d4e4b67708488"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

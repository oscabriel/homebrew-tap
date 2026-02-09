class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.6"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.6/ow-darwin-arm64.tar.gz"
      sha256 "ffa84514e85602246e6044cefe02a1a161ca53174980062c1628c0509761bef7"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.6/ow-darwin-x64.tar.gz"
      sha256 "06f1a71691101b47a4d1da62631e383f4fe57a0da0e3dfa5b498d0d798cc968d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.6/ow-linux-arm64.tar.gz"
      sha256 "48bec2fa0727d3c72242f8846eaa15f350621c25084a99e4f6800efd8625aaea"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.6/ow-linux-x64.tar.gz"
      sha256 "b62bca70008f8811db63d39109dd13e0e4a1b1b957fcaa5224285830aaf50cab"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

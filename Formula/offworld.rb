class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.1.8"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.8/ow-darwin-arm64.tar.gz"
      sha256 "1544e2e9ee13d244733b1416bc2c4ba70d17f3b70b3d86a9cfcbd6c4d5cb51d3"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.8/ow-darwin-x64.tar.gz"
      sha256 "67adab9361141a0888152c07fd166351ac535e18fda069667cdb5abc4e7d9219"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.8/ow-linux-arm64.tar.gz"
      sha256 "47d81b4f572eb40145f667e21addd545e1673d2ed28e4ca69639190a58e287da"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.8/ow-linux-x64.tar.gz"
      sha256 "cdd6290b72a8e3dee767683c8f6057fe5732bb172eba0d52af72e1e99a80fb0d"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

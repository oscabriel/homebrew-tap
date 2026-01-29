class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.2.0"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.0/ow-darwin-arm64.tar.gz"
      sha256 "11976c16b00b5856ed6a4b6cf9d9702e901f4c407b72e7d2486c42c509b95849"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.0/ow-darwin-x64.tar.gz"
      sha256 "e2a970a2b74ce2262db2e7dac2aa7cdc7830e1503c00ba58506b1c8e3b4cdb0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.0/ow-linux-arm64.tar.gz"
      sha256 "84aa9a4d642fa18f0a874cfccd7b529b33ade21fb220bc6baf183097c3c30eb2"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.0/ow-linux-x64.tar.gz"
      sha256 "324ec39d04f52dc0a80782e7b9dc0933faa2340a1e87c30a95aee80421056d44"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.1.4"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.4/ow-darwin-arm64.tar.gz"
      sha256 "dcd8bc595ff2f681a5b28ad0566afcdf7a628e33f0af3bfc6c6a4ce0f2e3aebf"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.4/ow-darwin-x64.tar.gz"
      sha256 "548187df4e77028be349bfdc8099ff3f3c7c2a340485a0799338025403b9d7f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.4/ow-linux-arm64.tar.gz"
      sha256 "4472dec11d37181d84cc2ec096d78e45d2cc4f76848e74421bcb0445c80a84cc"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.1.4/ow-linux-x64.tar.gz"
      sha256 "45986b1d3b66d62aaf7e361670288354c713d5e9e7315195604728cc09efc142"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

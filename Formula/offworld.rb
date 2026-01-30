class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.2.2"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.2/ow-darwin-arm64.tar.gz"
      sha256 "b3bf25ade71cdb342330123dc73ab379a711f046dfd7d65d0a0d6c1ad85e4725"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.2/ow-darwin-x64.tar.gz"
      sha256 "dfd078980e22388dc9dfaa19cf60f28b097883d98ffde110cb10ece08c2dde4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.2/ow-linux-arm64.tar.gz"
      sha256 "581669a672e835dfa766d3cbaf721e1cbf736c5512105dfe09adcb310bcae012"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.2.2/ow-linux-x64.tar.gz"
      sha256 "c2b00b2c47cc010e2394a084211c5fdd4a5caab73e101823ade668d4b73f1c08"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

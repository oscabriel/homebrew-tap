class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.4"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.4/ow-darwin-arm64.tar.gz"
      sha256 "a1ed4153c97b6564fc65c82bd1975695a3971600f3112f44f9a5abf4da919ead"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.4/ow-darwin-x64.tar.gz"
      sha256 "ca91665ebd4933fb099503f1f6dd3e6d8e8c36c3bbe5cd9d67393a6c03c72511"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.4/ow-linux-arm64.tar.gz"
      sha256 "5889e1f2b7be1e1e69fb69f2db09d39e51861877146120d907511a000ab861c7"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.4/ow-linux-x64.tar.gz"
      sha256 "bed184a5896175b2f8777d92d5d00ac385c1f42e9a042c68188c198070271629"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

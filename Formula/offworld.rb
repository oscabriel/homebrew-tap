class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.1"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.1/ow-darwin-arm64.tar.gz"
      sha256 "e02faeed3f49db03d756a931e5c0b1d8c6c182bab6be5d0b16e17436a00cfda0"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.1/ow-darwin-x64.tar.gz"
      sha256 "64877c7116f35310c3f88e2880a14a30c38b96e7007042f63a6f00ae13bc4bda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.1/ow-linux-arm64.tar.gz"
      sha256 "70d30d35201b549a40bd505d2519fa5ee4590ac73277423dbdaabc35349e55d0"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.1/ow-linux-x64.tar.gz"
      sha256 "19b3cab25e18c5a865a5dff23817b425e3137cd8f37a92063ae976f974fbae45"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

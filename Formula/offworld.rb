class Offworld < Formula
   desc "Offworld CLI - Generate references for your dependencies"
   homepage "https://offworld.sh"
   version "0.3.3"
   license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.3/ow-darwin-arm64.tar.gz"
      sha256 "3476076b5b7988f617b127c2bfa7b0c3cf5f9b06c5c0a855affff933017cb923"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.3/ow-darwin-x64.tar.gz"
      sha256 "c2faa1f79578562c8c25fa74c9867b111ededd29ffc7a76a5dd21cbfcd7e0935"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.3/ow-linux-arm64.tar.gz"
      sha256 "c53e5b85b5f3259c0861d21183e75f3269121b31d332710f4c4439104d3c1837"
    else
      url "https://github.com/oscabriel/offworld/releases/download/v0.3.3/ow-linux-x64.tar.gz"
      sha256 "9f754671dff37b84c8c326f29ea48a61ec1566508b6fcfc1b95cdee8d9443004"
    end
  end

  def install
    bin.install "ow"
  end

  test do
    assert_match "ow", shell_output("#{bin}/ow --version")
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.30/akclip.tar.gz"
  sha256 "1a10241d01aed3df776d5fa51535de6269ce3f79770152119be0367c2eb6a564"
  license "MIT"
  version "v0.0.30"

  def install
    tar xzf "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "5acda0928f8dc957e615f9204675ab7ba32bdde681aacef25783b8f88cff8655"
  license "MIT"
  version "v0.0.4"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

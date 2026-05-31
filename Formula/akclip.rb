class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.29/akclip.tar.gz"
  sha256 "116de2a49dce1dc4a44717afbadb74ba1bacfa397f14f97a58ff67881e62ee73"
  license "MIT"
  version "v0.0.29"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

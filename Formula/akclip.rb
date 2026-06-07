class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.42/akclip.tar.gz"
  sha256 "1a1a970edbfcf43290e67c0e50a713b976219a337e42e387bc21367d0df2065b"
  license "MIT"
  version "v0.0.42"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

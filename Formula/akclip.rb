class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "cd4abfdf32e40e21d071e11e556c902b14d898335672a20fb02b507bf8536180"
  license "MIT"
  version "v0.0.8"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.50/akclip.tar.gz"
  sha256 "2c1ee65cfded00968de0ab6731e943768157b9c980389ae92fcdb3d859dd239b"
  license "MIT"
  version "v0.0.50"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

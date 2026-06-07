class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.45/akclip.tar.gz"
  sha256 "0c66c33d8e481be4f5df8ce5cd2c03ca4ab49243a4b36b5d0b039074a4bc0649"
  license "MIT"
  version "v0.0.45"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

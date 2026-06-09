class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.82/akclip.tar.gz"
  sha256 "61124a257bd93508d08ae4af7cad68f1d41a155a6cce5943ea1a3d44a46687b1"
  license "MIT"
  version "v0.0.82"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.53/akclip.tar.gz"
  sha256 "005326cff168c29a28d7b59c2ec06d59d4a8900b82e0bba977bfac5c808c8b5a"
  license "MIT"
  version "v0.0.53"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

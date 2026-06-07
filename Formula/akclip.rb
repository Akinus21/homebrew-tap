class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.48/akclip.tar.gz"
  sha256 "f2f9ff6602dbb5c234286ad3e8a08775cb194a20694bca80ea2d0d55c65324b7"
  license "MIT"
  version "v0.0.48"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

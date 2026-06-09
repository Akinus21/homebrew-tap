class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.77/akclip.tar.gz"
  sha256 "6f78254cb328c288bda9f01e3ce83e31541957063218ff5de4b4de63f8b2cf05"
  license "MIT"
  version "v0.0.77"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

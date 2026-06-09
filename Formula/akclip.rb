class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.72/akclip.tar.gz"
  sha256 "4b44896d1d711ca23182db9f4bce39e5ff433cf2c75f6f4e7f14c74371698cda"
  license "MIT"
  version "v0.0.72"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

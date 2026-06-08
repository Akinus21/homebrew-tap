class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.67/akclip.tar.gz"
  sha256 "d82e3e943ba5d0a34d2ab6ba424efb337672e3883c82575315620d8aa43ba16b"
  license "MIT"
  version "v0.0.67"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

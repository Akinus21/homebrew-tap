class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.79/akclip.tar.gz"
  sha256 "aa00e6163464525ccf633b0d06b0d9a229f564f5d582199dd366420b8157bbb2"
  license "MIT"
  version "v0.0.79"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

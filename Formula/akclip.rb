class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.76/akclip.tar.gz"
  sha256 "fa019b6aaf0661b3142268b70254e4f52df9501c96422d21a5e84c26403152dd"
  license "MIT"
  version "v0.0.76"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

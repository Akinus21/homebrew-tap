class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.59/akclip.tar.gz"
  sha256 "1d2d68726b7f6d6c19f98be7e11420d35dd437c3b0d4dd43a6f586bca4c01282"
  license "MIT"
  version "v0.0.59"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

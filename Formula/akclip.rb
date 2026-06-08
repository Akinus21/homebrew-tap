class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.56/akclip.tar.gz"
  sha256 "d0d6c1949d3640dfd209ab4d0ba5377309ea8df4c7913c25c2d38d25f34c7459"
  license "MIT"
  version "v0.0.56"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

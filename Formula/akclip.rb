class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.33/akclip.tar.gz"
  sha256 "8cd7232361f2dcaea5be3b316f21742f619a35b125198a8d4f70a3e253a85152"
  license "MIT"
  version "v0.0.33"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

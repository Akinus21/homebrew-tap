class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.60/akclip.tar.gz"
  sha256 "a2c40414d1574c8943344bb2d3d2635bda70382f53a012353fc64129bae01f6e"
  license "MIT"
  version "v0.0.60"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

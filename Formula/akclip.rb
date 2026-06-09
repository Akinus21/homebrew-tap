class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.74/akclip.tar.gz"
  sha256 "7d8a6a1965beaa6a022845783d78b1789758dfafb6acfe1776a8b0bef66871dd"
  license "MIT"
  version "v0.0.74"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

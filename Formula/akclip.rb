class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "8ebc085faff6cf239dfcf2b62b9059ac2234fac0f2d2cce482cbfdcd257660e0"
  license "MIT"
  version "v0.0.7"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

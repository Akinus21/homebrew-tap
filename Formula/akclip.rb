class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.20.tar.gz"
  sha256 "3287b175f88fbd7907a60fd1a933fdfcf47278ed3b245f43105a175ea1b14002"
  license "MIT"
  version "v0.0.20"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

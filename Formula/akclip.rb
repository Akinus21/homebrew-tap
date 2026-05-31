class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.18.tar.gz"
  sha256 "6940a2e4b36cd967fbcc23c66929752d67d7d1243422d4e99d916568b4551a06"
  license "MIT"
  version "v0.0.18"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

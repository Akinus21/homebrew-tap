class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "69e7c01b963b6d2223d69501586a79ddfd363afcfd79b76974b43bfe30d88da5"
  license "MIT"
  version "v0.0.6"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

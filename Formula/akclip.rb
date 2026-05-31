class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.14.tar.gz"
  sha256 "ba96423ca8833d833c246292d08c976998bcb376f18d855f662ef57b7f71d0e3"
  license "MIT"
  version "v0.0.14"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

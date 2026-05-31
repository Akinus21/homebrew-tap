class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "00c2dd6118d061e55825c8228f189d205d4941fb7bec7fb76f408b45f093ebca"
  license "MIT"
  version "v0.0.5"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

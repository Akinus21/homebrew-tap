class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.11.tar.gz"
  sha256 "0dbf5752f71ffd4a33411b21d89bc7c40187b50f6218d6309934a8b9ffde2249"
  license "MIT"
  version "v0.0.11"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

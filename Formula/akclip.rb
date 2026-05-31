class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.13.tar.gz"
  sha256 "86b3fd7fb4300d97dd88ef59fd43e2b7284844b82a8c6dba787a3dfb24aab8df"
  license "MIT"
  version "v0.0.13"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

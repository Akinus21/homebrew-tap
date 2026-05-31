class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.15.tar.gz"
  sha256 "d212084de962b789a4d5bb2891dda622facd4688121d30647bf1b4a54280f0cc"
  license "MIT"
  version "v0.0.15"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

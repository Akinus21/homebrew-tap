class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.28/akclip.tar.gz"
  sha256 "990c01225b880d264cb0d7ed102d7ee5f6253dc259eb2baf333df2f08f918959"
  license "MIT"
  version "v0.0.28"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

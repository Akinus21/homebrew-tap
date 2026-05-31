class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.25/akclip.tar.gz"
  sha256 "04f73998044b48cef685d34a5a1f7cec6333f735e64983e3bc48a9c27e68910e"
  license "MIT"
  version "v0.0.25"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

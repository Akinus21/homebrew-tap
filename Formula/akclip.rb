class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.23.tar.gz"
  sha256 "97b5abda080065763ff5edd0af6a525bc911240a04f9ff7e5d066b413b942f94"
  license "MIT"
  version "v0.0.23"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.17.tar.gz"
  sha256 "0c7750240a50324b8faca792e4055f22537a33873b4e1b2f1cb9e115af49effd"
  license "MIT"
  version "v0.0.17"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.27/akclip.tar.gz"
  sha256 "55a5df0360f09ec36e97e9aeccdf397798b4c50613ab47a70f7d49f68563cdca"
  license "MIT"
  version "v0.0.27"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

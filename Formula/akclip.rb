class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.16.tar.gz"
  sha256 "d5772a316f3be9e73c4c3061ce64e540dc8c83d1b704c2be5803cb31e2d0957d"
  license "MIT"
  version "v0.0.16"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

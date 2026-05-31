class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "eda336415fa98678fef34c85dc6b2a24b40a60fe547c683ccf007e694e31f67e"
  license "MIT"
  version "v0.0.2"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

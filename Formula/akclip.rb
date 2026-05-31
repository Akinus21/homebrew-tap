class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.19.tar.gz"
  sha256 "3daa5916fbaa1679a3c6241daf08ce28f26b2c6a14cb241b64249ab3de7b2252"
  license "MIT"
  version "v0.0.19"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

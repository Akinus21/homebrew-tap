class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.26/akclip.tar.gz"
  sha256 "1a98c687c3fbdddef97bab76fbd46201843ae954c94bafcffb93198d3d6e4c23"
  license "MIT"
  version "v0.0.26"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

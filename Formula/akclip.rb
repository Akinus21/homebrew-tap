class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.52/akclip.tar.gz"
  sha256 "402c0f7a0a038023782af092e853ca409c2d3873247d0182127f538c24dc1b52"
  license "MIT"
  version "v0.0.52"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

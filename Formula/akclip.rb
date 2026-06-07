class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.49/akclip.tar.gz"
  sha256 "2c211c466c194a9a95594289a68e85b799febdff6813af963e1dcc69b32479eb"
  license "MIT"
  version "v0.0.49"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

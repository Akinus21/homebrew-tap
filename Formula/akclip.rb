class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.34/akclip.tar.gz"
  sha256 "8438d2549f3275ef362f5acb0f63c4a461a14243367f48bd84144d7537c56f04"
  license "MIT"
  version "v0.0.34"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

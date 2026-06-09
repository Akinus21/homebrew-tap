class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.85/akclip.tar.gz"
  sha256 "a4c0357ecd139d1f1b09f9081ade98582a9b7b79c34165e34d00dd8910e2fea4"
  license "MIT"
  version "v0.0.85"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

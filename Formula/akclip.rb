class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.71/akclip.tar.gz"
  sha256 "b5c93f1ebfa8fb9bd7436dfd38b016c2cc4005985aba90c21697ea8bf7a4dda4"
  license "MIT"
  version "v0.0.71"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

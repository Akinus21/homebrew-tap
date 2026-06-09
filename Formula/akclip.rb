class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.92/akclip.tar.gz"
  sha256 "3aa439b95820f7a6eeb3c618738b2131063064f0193fc2a70dc312c30b7f7cc9"
  license "MIT"
  version "v0.0.92"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

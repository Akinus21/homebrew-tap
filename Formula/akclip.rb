class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.91/akclip.tar.gz"
  sha256 "6ef9ae0b5235d1e76e7317973f61a6eadb8c45fe958546a771480beba7a63d20"
  license "MIT"
  version "v0.0.91"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

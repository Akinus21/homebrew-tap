class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.36/akclip.tar.gz"
  sha256 "1e74c51f9a20589c3223c7a8c379eb1645318b7e58418de99d862206e89d835f"
  license "MIT"
  version "v0.0.36"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

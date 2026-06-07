class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.38/akclip.tar.gz"
  sha256 "a12153f5b7d19ff99a3a789594db5f584de83d60aac1d4a35375a77207d1d86f"
  license "MIT"
  version "v0.0.38"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

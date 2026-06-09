class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.83/akclip.tar.gz"
  sha256 "3416d8dc4ace98cae83010f2b84280d19a8e62dfed1c74dc3c23c08d79c67c3b"
  license "MIT"
  version "v0.0.83"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

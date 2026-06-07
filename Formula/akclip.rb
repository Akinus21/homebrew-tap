class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.47/akclip.tar.gz"
  sha256 "4d37868d7fe585ef4d2be2ec5207b3f5f324de0b8a93c5ad94503a89fba9b4ab"
  license "MIT"
  version "v0.0.47"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

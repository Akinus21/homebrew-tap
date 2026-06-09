class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.80/akclip.tar.gz"
  sha256 "25268e921b8b3918f13f201a8c116bbe69e961b27563ac2f0e532fd54e1bb780"
  license "MIT"
  version "v0.0.80"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

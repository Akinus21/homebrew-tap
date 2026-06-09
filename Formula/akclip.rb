class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.89/akclip.tar.gz"
  sha256 "77c572f059629a1e9e64e3456622b551ed971adf88bfb62d690613b8fd6dcf36"
  license "MIT"
  version "v0.0.89"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

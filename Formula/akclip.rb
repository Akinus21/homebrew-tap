class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.31/akclip.tar.gz"
  sha256 "cd28fe8ae5249956d9d4674f0c2c1f0634a94d3684d67ee3d96130d93fb9a866"
  license "MIT"
  version "v0.0.31"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

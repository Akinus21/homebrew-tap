class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.51/akclip.tar.gz"
  sha256 "90585acb224091f6e4a9cf429d3140acb6e0f9a88e8ec3ae4df25213ae525529"
  license "MIT"
  version "v0.0.51"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

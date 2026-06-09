class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.70/akclip.tar.gz"
  sha256 "dd193da7f6aa1433182099ce6865e4bbdb7d455cd2e121d3fe05ac86fe6fc8cd"
  license "MIT"
  version "v0.0.70"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

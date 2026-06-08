class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.58/akclip.tar.gz"
  sha256 "413df9d1e49c9f176cb02585fdab58e236f26b74805eb4996903abbb78c9bf24"
  license "MIT"
  version "v0.0.58"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

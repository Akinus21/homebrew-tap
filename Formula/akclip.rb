class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.39/akclip.tar.gz"
  sha256 "37f4e57dacb3c3b9639e8be937d9a82dbef1e93fcd61ebf17d65341ae5b4752d"
  license "MIT"
  version "v0.0.39"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

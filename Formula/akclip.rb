class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.62/akclip.tar.gz"
  sha256 "ed6384ea437b0026e39986d195322b7e4341efca11374b99c1cb0112e8538d0d"
  license "MIT"
  version "v0.0.62"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

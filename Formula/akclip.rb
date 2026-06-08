class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.64/akclip.tar.gz"
  sha256 "65e07d0462d1c7aaaab501d49d3bbdae4da0db1ba03662e4dfb6adf86953a544"
  license "MIT"
  version "v0.0.64"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.66/akclip.tar.gz"
  sha256 "a5eacd2850b17f936f46bb8a42207983f03b1d7d65d7fcf901ffe683461b27ba"
  license "MIT"
  version "v0.0.66"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.40/akclip.tar.gz"
  sha256 "279e73d8e90dad9b11a8bb3dc464f57e6307c8a3dfec41d2581a20d51bcc3b4c"
  license "MIT"
  version "v0.0.40"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

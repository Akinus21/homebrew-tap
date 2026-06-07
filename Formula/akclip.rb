class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.32/akclip.tar.gz"
  sha256 "dfdfe0979cf3af5e774ec96605ecbe67f0c7d0ae3959f7130c13ee711313b998"
  license "MIT"
  version "v0.0.32"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

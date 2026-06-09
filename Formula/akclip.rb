class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.75/akclip.tar.gz"
  sha256 "cb7c7ba3192641caaef8c917b15d96c42b1987f9d5e4239ffa847bedc002b098"
  license "MIT"
  version "v0.0.75"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.37/akclip.tar.gz"
  sha256 "609f0c40f2b087de5db89a4fb8442b5e81766e7556136dbf0f06fde645671f28"
  license "MIT"
  version "v0.0.37"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

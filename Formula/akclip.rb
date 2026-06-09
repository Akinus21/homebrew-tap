class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.81/akclip.tar.gz"
  sha256 "17493dffa48110bd747a84ef9cb3ff85b0ac63cb8ebf6136e60ebfa890bd0c96"
  license "MIT"
  version "v0.0.81"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

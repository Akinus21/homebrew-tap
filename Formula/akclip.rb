class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.55/akclip.tar.gz"
  sha256 "28694513d872657084a1d13c2f8b508ee3d868a6a224ce8876baa1431f5252fc"
  license "MIT"
  version "v0.0.55"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.44/akclip.tar.gz"
  sha256 "5e2f18f90156d5a6de9a4b276bf16c1abd6f1fe605b718840aac1c384f8a245d"
  license "MIT"
  version "v0.0.44"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.69/akclip.tar.gz"
  sha256 "6bc7b6920abea75407fe6a373922fb2bfd8bfe074bc3d8ba81977e3a9b5972b3"
  license "MIT"
  version "v0.0.69"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

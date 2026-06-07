class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.35/akclip.tar.gz"
  sha256 "b63d5e973ce69da4462e94abe454376876247cd5dc8e1a39373c90e38d117fba"
  license "MIT"
  version "v0.0.35"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

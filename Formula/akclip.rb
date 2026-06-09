class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.84/akclip.tar.gz"
  sha256 "70a2b71b2164f5e297337bafdf199739ab5325ab6814139eb775535bc4dd1859"
  license "MIT"
  version "v0.0.84"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

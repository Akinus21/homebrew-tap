class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.57/akclip.tar.gz"
  sha256 "892dcdfbcbf372af2601e718b478524b9267d832dc3736e7f5699aad6480acf6"
  license "MIT"
  version "v0.0.57"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

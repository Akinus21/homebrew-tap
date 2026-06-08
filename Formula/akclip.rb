class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.54/akclip.tar.gz"
  sha256 "42a7e5a3034a77ffde859821c350dc9ce528d507a963c95f4c8a290baa86c89a"
  license "MIT"
  version "v0.0.54"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

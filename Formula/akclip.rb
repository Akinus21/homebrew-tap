class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.68/akclip.tar.gz"
  sha256 "ff962d0b205fd5630ca37076718f27c66a7842cad05daf052123463c5c58727d"
  license "MIT"
  version "v0.0.68"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

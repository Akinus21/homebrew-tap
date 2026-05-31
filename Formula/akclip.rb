class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.22.tar.gz"
  sha256 "d08ae01aeea08436aa16b1b5d8b9a9d364c4f7d72690b05f1d20c59eb107ebee"
  license "MIT"
  version "v0.0.22"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

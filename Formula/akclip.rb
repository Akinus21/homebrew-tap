class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "b906d1286f5e662bc45d554fa19d36ec4ec4e47aea74806cb712b085ec864e2c"
  license "MIT"
  version "v0.0.9"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

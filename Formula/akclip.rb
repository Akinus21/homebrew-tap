class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "623dd45045c775954a0d015d1b2fd0b1feb44411b8d7f0b5ab40983eb94e3abc"
  license "MIT"
  version "v0.0.10"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

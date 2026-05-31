class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.12.tar.gz"
  sha256 "5cc092359f70497c5fb4970daad018a95f26cfff7672a9024944a2038cf0f7f8"
  license "MIT"
  version "v0.0.12"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

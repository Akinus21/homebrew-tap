class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.21.tar.gz"
  sha256 "cbdbeeaeb0eb6d6fb3fdacb4accd3b62cae6f2a169f582017a035057dd745703"
  license "MIT"
  version "v0.0.21"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

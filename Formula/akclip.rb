class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/archive/refs/tags/v0.0.24.tar.gz"
  sha256 "e656d732612d88999bee4a662e4c830b58615f49b84955436610ca85a06e7cf0"
  license "MIT"
  version "v0.0.24"

  def install
    system "tar", "xzf", "akclip.tar.gz"
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

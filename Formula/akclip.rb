class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.41/akclip.tar.gz"
  sha256 "bb190a8eacf9db0e33795f21de4df112b983b80a1860f41feb234923261ff081"
  license "MIT"
  version "v0.0.41"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

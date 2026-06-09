class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.90/akclip.tar.gz"
  sha256 "22461e9d88d6bca7dcfb7df9ff5c50d719fe1aceeae58cc3ef3daa71930497a5"
  license "MIT"
  version "v0.0.90"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

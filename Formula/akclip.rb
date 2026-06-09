class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.78/akclip.tar.gz"
  sha256 "c87cd3fc42886b8b57dd165c7623aefa315628909f270d264672fb18c73cf581"
  license "MIT"
  version "v0.0.78"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.61/akclip.tar.gz"
  sha256 "84c3174df5750b13d8fdc49e6ed1c325fc71f4158ebd958bdd58fa396dea605f"
  license "MIT"
  version "v0.0.61"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

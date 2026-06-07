class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.43/akclip.tar.gz"
  sha256 "2887ef90e91fb2eb35af24570abeba57b221df4a0a55742b61e7e60c4df383c7"
  license "MIT"
  version "v0.0.43"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

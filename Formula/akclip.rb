class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.88/akclip.tar.gz"
  sha256 "548b62a8d84cc428aca20d48c03c02d015c3b6777c46a314ae2f819c457a8ed1"
  license "MIT"
  version "v0.0.88"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

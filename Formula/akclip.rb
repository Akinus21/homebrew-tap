class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.46/akclip.tar.gz"
  sha256 "67fc9f01f009d5f3a55151741528acd07b26b4b00112ad957134d82018ac8134"
  license "MIT"
  version "v0.0.46"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end

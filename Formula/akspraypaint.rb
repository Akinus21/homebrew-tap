class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.104/akspraypaint"
  sha256 "87756d43200d6855cde20478332d15981c5131ca8f743b6e95bf92842fea110b"
  version "0.0.104"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.104/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

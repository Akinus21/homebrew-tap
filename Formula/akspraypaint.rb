class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.101/akspraypaint"
  sha256 "f40e3a8fbbbb0144ff81560ee1c768e6b58b9d30a27436a68684aa116c137165"
  version "0.0.101"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.101/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

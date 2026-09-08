class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.132/akspraypaint"
  sha256 "e73402b953ffa8c3da8c6bf3c90afc3bd3a028153e98839622aa81bce3c3bdad"
  version "0.0.132"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.132/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

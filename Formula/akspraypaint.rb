class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.97/akspraypaint"
  sha256 "34f4812bb979ad8fcf06b0da2731808cf370b36d45bc3449a57a5c9ddf990902"
  version "0.0.97"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.97/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

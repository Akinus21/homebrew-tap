class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.87/akspraypaint"
  sha256 "76897d2ac6f9b91423c608858de5e04009774e7e310df6350cab164cde5748ec"
  version "0.0.87"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.87/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

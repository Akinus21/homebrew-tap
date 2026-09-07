class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.95/akspraypaint"
  sha256 "304e102ce5a126fe292717ea5cb9ea27ec0504fab0998b63b055be2c57136d3c"
  version "0.0.95"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.95/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

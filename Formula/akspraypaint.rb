class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.122/akspraypaint"
  sha256 "2e2c03d07d0c240b17622a3ea232ab9d7a19693c17396e8ec043927a40891441"
  version "0.0.122"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.122/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

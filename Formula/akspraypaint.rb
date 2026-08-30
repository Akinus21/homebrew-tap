class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.74/akspraypaint"
  sha256 "22167eb662fd2ed6e83cf70186cbbb9c4c5d4932b402d067e0636c5d290b0407"
  version "0.0.74"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.74/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

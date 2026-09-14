class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.138/akspraypaint"
  sha256 "9ff3de2d323c0a39333914a1d1671d6770a1ad49c086219d176cf86b292d9747"
  version "0.0.138"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.138/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

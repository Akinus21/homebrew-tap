class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.133/akspraypaint"
  sha256 "f2de501f41c08e63139cd52dedb34b698796738779072c865a41182a3c13d882"
  version "0.0.133"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.133/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

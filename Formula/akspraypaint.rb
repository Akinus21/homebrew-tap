class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.114/akspraypaint"
  sha256 "1442c984c8692f658fcb55641be326af3dc9b4ee0d52d2640f3a5c14b1ffff85"
  version "0.0.114"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.114/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

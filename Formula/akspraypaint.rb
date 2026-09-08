class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.130/akspraypaint"
  sha256 "a3f83d9d64847746c6bba222ff30003f86fed3643655e8f9d11b89b10f5c5686"
  version "0.0.130"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.130/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

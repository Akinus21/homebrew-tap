class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.78/akspraypaint"
  sha256 "6d129edc1b4497280bad49f86514c486c301aafb5065bfec1fad57f2638ad3a4"
  version "0.0.78"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.78/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

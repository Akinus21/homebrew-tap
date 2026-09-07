class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.94/akspraypaint"
  sha256 "d203d691f7278bac5ccf917a9f431d1283a9b34ba5c28ee015c6c08b75438fb0"
  version "0.0.94"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.94/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.73/akspraypaint"
  sha256 "665bda2c267333b37ef15f9c38d970adfb1117c2a1d111b3987468b85ac56d39"
  version "0.0.73"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.73/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

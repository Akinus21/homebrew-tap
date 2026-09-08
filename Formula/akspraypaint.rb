class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.120/akspraypaint"
  sha256 "64e9c10ed3f7aa5eaf3a8026c252bb719dd4599b4fa311da8a0b48d45e7e3495"
  version "0.0.120"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.120/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

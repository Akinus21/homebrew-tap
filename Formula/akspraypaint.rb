class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.103/akspraypaint"
  sha256 "0b45a29474943a183f0ae41bb8d5c41d12247a956e95788f3204d99dd0c2a5bb"
  version "0.0.103"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.103/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

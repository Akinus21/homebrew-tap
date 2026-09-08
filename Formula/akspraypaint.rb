class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.127/akspraypaint"
  sha256 "a23632006d5f2223fc678c39f2723b423dbdf49ace61b11c2d185bec3b315597"
  version "0.0.127"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.127/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

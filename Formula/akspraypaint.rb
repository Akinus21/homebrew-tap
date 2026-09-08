class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.119/akspraypaint"
  sha256 "36ada86351ff5376d2807fbfc234533bda721f8d81a66af192ea226247e8815b"
  version "0.0.119"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.119/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

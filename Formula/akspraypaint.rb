class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.108/akspraypaint"
  sha256 "3647b8cb5188b6c7d94d42a6dccafb1f8c266f0510d1ba6818a2c27b35fdffad"
  version "0.0.108"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.108/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

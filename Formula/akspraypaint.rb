class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.131/akspraypaint"
  sha256 "6915795b80db686580e64f0939d3e7ceb63f5a9ded1268a8edbd3932454eb6b7"
  version "0.0.131"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.131/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

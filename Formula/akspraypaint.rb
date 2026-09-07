class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.90/akspraypaint"
  sha256 "dfbcf1fa3cbbe3af6f8213deedcb22613059a2334b6fe0483f2e0e2898e4e68f"
  version "0.0.90"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.90/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

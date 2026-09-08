class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.111/akspraypaint"
  sha256 "981359d60d5bb42ee5754046b7857221256ef4be4e1796e8f10228af55d1918d"
  version "0.0.111"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.111/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

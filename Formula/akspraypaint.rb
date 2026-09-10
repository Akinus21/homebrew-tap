class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.136/akspraypaint"
  sha256 "0c6bbc32218ae566406123cfd8497de647d1cc78a79c743ce0a2c07dd7cf45c7"
  version "0.0.136"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.136/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

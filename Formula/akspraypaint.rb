class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.102/akspraypaint"
  sha256 "c0e23ee226030e818ae473d692ade55b6fbbb3a26e5e7ab4235f9694f42780cf"
  version "0.0.102"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.102/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

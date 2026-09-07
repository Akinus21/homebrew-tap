class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.79/akspraypaint"
  sha256 "54c24fa6ba1bb3a5326a6763dbe48c463f715995a5edd0486389a579450dd88e"
  version "0.0.79"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.79/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

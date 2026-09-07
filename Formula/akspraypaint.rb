class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.98/akspraypaint"
  sha256 "98255cd10b7ab23a8982efe0a68b37d72603427fd4f9bcf85468b9d239fbe307"
  version "0.0.98"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.98/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

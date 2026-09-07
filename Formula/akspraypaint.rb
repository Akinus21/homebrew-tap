class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.96/akspraypaint"
  sha256 "5dda0df6d82ce8414e56396ae97d94e7baf5916de285e0f1c99255db498c6e64"
  version "0.0.96"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.96/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

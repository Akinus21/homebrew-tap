class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.77/akspraypaint"
  sha256 "60d177a8e4916019ea2c5bd864ee11cf6cb6f14fa688d154d97b520d8ecf2b23"
  version "0.0.77"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.77/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end
